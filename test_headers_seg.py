from curl_cffi import requests
from urllib.parse import urlparse

embed_url = "https://embed13.streamc.xyz/embed.php?hash=0fd818d3dc190f5932666818a1204f25"
seg = "https://thais.hihihoho3.top/0fd818d3dc190f5932666818a1204f25/streamaaa0000.png"

session = requests.Session(impersonate="chrome120")

# Test 1: what if we send different Referer / Origin?
tests = [
    {"Referer": "https://embed13.streamc.xyz/"},
    {"Referer": embed_url},
    {"Referer": "https://phim.nguonc.com/"},
    {"Referer": "https://streamc.xyz/"},
    {"Origin": "https://embed13.streamc.xyz"},
    {"Origin": "https://streamc.xyz"},
    {"Referer": embed_url, "Origin": "https://embed13.streamc.xyz"},
    {"Referer": "https://phim.nguonc.com/", "Origin": "https://phim.nguonc.com"},
    {}
]

for i, h in enumerate(tests):
    res = session.get(seg, headers=h)
    print(f"Test {i} ({h}) -> Status: {res.status_code}, Length: {len(res.content)}")
    if res.status_code == 200:
        print("SUCCESS! Headers:", dict(res.headers))
        break
