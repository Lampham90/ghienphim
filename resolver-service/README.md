# NguonC Stream Resolver Service

Microservice siêu nhẹ viết bằng FastAPI + curl_cffi chuyên dùng giải mã link embed của phim.nguonc.com (streamc.xyz) thành playlist M3U8 sạch cho website Next.js (phimkk).

## 1. Deploy MIỄN PHÍ lên Render.com (Khuyên dùng - 2 phút)
1. Đẩy code lên GitHub repository của bạn.
2. Đăng nhập [render.com](https://render.com) -> Chọn **New +** -> **Web Service**.
3. Chọn repo GitHub của bạn.
4. Thiết lập cấu hình:
   - **Root Directory**: `resolver-service`
   - **Runtime**: `Python 3`
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `uvicorn main:app --host 0.0.0.0 --port $PORT`
5. Bấm **Deploy**. Sau khi hoàn tất bạn sẽ nhận được URL: `https://ten-cua-ban.onrender.com`
6. Thêm biến môi trường vào Cloudflare Pages:
   `NEXT_PUBLIC_NGUONC_RESOLVER_URL=https://ten-cua-ban.onrender.com`

## 2. Deploy MIỄN PHÍ lên Hugging Face Space (Không bao giờ ngủ)
1. Vào [huggingface.co/spaces](https://huggingface.co/spaces) -> **Create new Space**.
2. Chọn **Docker** (Blank).
3. Upload 3 file trong thư mục `resolver-service` (`main.py`, `requirements.txt`, `Dockerfile`).
4. Space sẽ tự động build và chạy vĩnh viễn!

## 3. Chạy thử nghiệm trên máy Local:
```bash
cd resolver-service
pip install -r requirements.txt
python main.py
```
API sẽ chạy tại `http://127.0.0.1:8000/resolve?url=...`
