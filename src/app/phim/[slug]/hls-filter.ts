/**
 * 💡 GIẢI PHÁP LỌC PLAYLIST THÔNG MINH (Ported from Kotlin)
 * Tự động nhận diện Phim chính và dọn sạch quảng cáo dựa trên Heuristic.
 */

export function filterSmartByBlock(requestUrl: string, content: string): string {
  const lines = content.split(/\r?\n/).map(l => l.trim()).filter(l => l.length > 0);
  if (lines.length === 0) return content;

  // Regex bắt mọi loại convertv (v1, v7, v8, v10...) kèm dấu gạch chéo
  const convertRegex = /convertv\d+\//i;

  // --- BƯỚC 1: TÌM ĐƯỜNG DẪN CHỦ ĐẠO (MAJORITY PATH) ---
  const pathCounts = new Map<string, number>();
  const uris = lines.filter(l => !l.startsWith("#"));
  uris.forEach(uri => {
    const path = uri.includes("/") ? uri.substring(0, uri.lastIndexOf("/")) : "";
    pathCounts.set(path, (pathCounts.get(path) || 0) + 1);
  });

  let mainPath = "";
  let maxCount = -1;
  pathCounts.forEach((count, path) => {
    if (count > maxCount) {
      maxCount = count;
      mainPath = path;
    }
  });

  // --- BƯỚC 2: CHIA FILE THÀNH CÁC KHỐI THEO DISCONTINUITY ---
  const header: string[] = [];
  const blocks: string[][] = [];
  let currentBlock: string[] = [];
  let isHeader = true;

  for (const line of lines) {
    if (line.startsWith("#EXT-X-DISCONTINUITY")) {
      isHeader = false;
      if (currentBlock.length > 0) blocks.push(currentBlock);
      currentBlock = [line];
    } else if (isHeader && line.startsWith("#EXT") && !line.startsWith("#EXTINF")) {
      header.push(line);
    } else {
      if (!line.startsWith("#EXT-X-ENDLIST")) {
        isHeader = false;
        currentBlock.push(line);
      }
    }
  }
  if (currentBlock.length > 0) blocks.push(currentBlock);

  // --- BƯỚC 3: LỌC KHỐI NGOẠI LAI (QUẢNG CÁO) ---
  const cleanBlocks = blocks.filter(block => {
    const segmentsInBlock = block.filter(l => !l.startsWith("#"));
    if (segmentsInBlock.length === 0) return true; // Giữ lại metadata/key

    const firstUri = segmentsInBlock[0];
    const blockPath = firstUri.includes("/") ? firstUri.substring(0, firstUri.lastIndexOf("/")) : "";

    // LOGIC LỌC:
    // - Giữ lại nếu là đường dẫn phim chính (mainPath).
    // - Giữ lại nếu khối cực dài (> 40 segments), chắc chắn là phim.
    // - Giữ lại nếu đường dẫn này phổ biến (> 20% tổng playlist).
    // - GIỮ LẠI nếy trong block có bất kỳ dòng nào chứa convertv.
    const isMainPath = blockPath === mainPath;
    const isLongBlock = segmentsInBlock.length > 40;
    const pathFrequency = (pathCounts.get(blockPath) || 0) / uris.length;
    const hasConvert = segmentsInBlock.some(uri => convertRegex.test(uri));

    return isMainPath || isLongBlock || pathFrequency > 0.2 || hasConvert;
  });

  // --- BƯỚC 4: TÁI CẤU TRÚC VÀ LÀM SẠCH ---
  const finalLines = [...header];
  for (const block of cleanBlocks) {
    for (const line of block) {
      if (!line.startsWith("#")) {
        // XỬ LÝ:
        // 1. Xóa bỏ convertv* khỏi text (ví dụ: convertv8/dTJR6KN5.ts -> dTJR6KN5.ts)
        const cleanedLine = line.replace(convertRegex, "");

        // 2. Resolve để lấy link tuyệt đối sạch dựa trên base URL của manifest
        try {
          finalLines.push(new URL(cleanedLine, requestUrl).href);
        } catch (e) {
          finalLines.push(cleanedLine);
        }
      } else {
        finalLines.push(line);
      }
    }
  }

  // Gộp thẻ Discontinuity bị trùng lặp
  const result: string[] = [];
  for (const line of finalLines) {
    if (line === "#EXT-X-DISCONTINUITY" && result[result.length - 1] === "#EXT-X-DISCONTINUITY") {
      continue;
    }
    result.push(line);
  }

  // Dọn dẹp thẻ rác ở cuối
  while (result.length > 0 && (
    result[result.length - 1].startsWith("#EXT-X-DISCONTINUITY") ||
    result[result.length - 1].startsWith("#EXT-X-KEY") ||
    result[result.length - 1].startsWith("#EXTINF")
  )) {
    result.pop();
  }

  if (content.includes("#EXT-X-ENDLIST")) result.push("#EXT-X-ENDLIST");

  return result.join("\n");
}