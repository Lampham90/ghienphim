from fastapi import FastAPI, Query, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from curl_cffi import requests
from urllib.parse import urlparse
import time

app = FastAPI(title="NguonC Stream Resolver")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# In-memory cache with TTL (1 hour)
CACHE = {}
CACHE_TTL = 3600

def get_stream_data(embed_url: str):
    now = time.time()
    if embed_url in CACHE:
        item = CACHE[embed_url]
        if now - item["cached_at"] < CACHE_TTL:
            return item["data"]

    parsed = urlparse(embed_url)
    origin = f"{parsed.scheme}://{parsed.netloc}"

    session = requests.Session(impersonate="chrome120")

    # Step 1: GET embed
    res_get = session.get(embed_url, headers={
        "Referer": "https://phim.nguonc.com/",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "vi-VN,vi;q=0.9,en-US;q=0.8,en;q=0.7",
    }, timeout=10)

    if res_get.status_code != 200:
        raise HTTPException(status_code=502, detail=f"Cloudflare block on embed page (status {res_get.status_code})")

    # Step 2: POST bootstrap
    payload = {
        "action": "bootstrap",
        "referrer": "https://phim.nguonc.com/",
        "frame_origins": ["https://phim.nguonc.com"],
        "request_grant": True,
        "playlist_format": "hls",
        "pretty_url": True,
        "path_chunks": True,
        "bootstrap_format": "json"
    }

    res_post = session.post(embed_url, headers={
        "Referer": embed_url,
        "Origin": origin,
        "Content-Type": "application/json",
        "Accept": "application/json, text/plain, */*",
    }, json=payload, timeout=10)

    if res_post.status_code != 200:
        raise HTTPException(status_code=502, detail=f"Bootstrap failed (status {res_post.status_code})")

    data = res_post.json()
    playlist_url = data.get("preissued", {}).get("playlist")
    if not playlist_url:
        raise HTTPException(status_code=502, detail="No preissued playlist URL in bootstrap response")

    # Step 3: GET playlist m3u8
    res_playlist = session.get(playlist_url, headers={
        "Referer": embed_url,
        "Origin": origin,
        "Accept": "*/*"
    }, timeout=10)

    if res_playlist.status_code != 200:
        raise HTTPException(status_code=502, detail=f"Failed to fetch m3u8 (status {res_playlist.status_code})")

    result = {
        "success": True,
        "playlistUrl": playlist_url,
        "embedOrigin": origin,
        "m3u8": res_playlist.text,
        "expiresAt": data.get("preissued", {}).get("expiresAt")
    }

    CACHE[embed_url] = {
        "cached_at": now,
        "data": result
    }

    return result

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/resolve")
def resolve(url: str = Query(..., description="Streamc embed URL")):
    try:
        return get_stream_data(url)
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8787)
