# TODO - VideoPlayer lỗi

## Step 1
- Đọc và xác định lỗi trong `src/app/phim/[slug]/VideoPlayer.tsx` (đã phát hiện: khai báo `handleMouseMoveGlobal` bị trùng trong useEffect, dùng `handleKeyDown` nhưng chưa có định nghĩa, gọi `saveProgress` sai tham số/kiểu).

## Step 2 (cần sửa code)
- Xóa phần khai báo `const handleMouseMoveGlobal = useCallback(...)` bị lặp bên trong `useEffect`.

## Step 3
- Xử lý `handleKeyDown`: thêm định nghĩa phù hợp hoặc gỡ hẳn listener nếu không cần.

## Step 4
- Sửa tất cả lời gọi `saveProgress(...)` để đúng chữ ký props: `saveProgress(epIndex, seconds, duration, shouldSync?)`.

## Step 5
- Chạy `npm run lint` và `npm run build` để kiểm tra compile.


