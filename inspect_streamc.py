from curl_cffi import requests
import json
from urllib.parse import urlparse

embed_url = "https://embed13.streamc.xyz/embed.php?hash=0fd818d3dc190f5932666818a1204f25"
parsed = urlparse(embed_url)
origin = f"{parsed.scheme}://{parsed.netloc}"

session = requests.Session(impersonate="chrome120")

# 1. GET embed page
res_get = session.get(embed_url, headers={
    "Referer": "https://phim.nguonc.com/",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
})
print("1. Embed status:", res_get.status_code)
html = res_get.text

# 2. POST bootstrap
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
}, json=payload)

print("2. Bootstrap status:", res_post.status_code)
data = res_post.json()
print("Bootstrap Ads config:", json.dumps(data.get("ads"), indent=2))
print("Bootstrap TVC config:", json.dumps(data.get("tvc"), indent=2))
print("Bootstrap Telemetry config:", json.dumps(data.get("telemetry"), indent=2))

playlist_url = data.get("preissued", {}).get("playlist")
print("Playlist URL:", playlist_url)

if playlist_url:
    res_playlist = session.get(playlist_url, headers={"Referer": embed_url, "Origin": origin})
    print("3. Playlist status:", res_playlist.status_code)
    lines = res_playlist.text.splitlines()
    print("Playlist lines count:", len(lines))
    print("\n--- First 30 lines of playlist ---")
    for l in lines[:30]:
        print(l)
