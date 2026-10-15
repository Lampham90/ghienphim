from curl_cffi import requests

headers = {
    'Referer': 'https://embed13.streamc.xyz/embed.php?hash=0fd818d3dc190f5932666818a1204f25',
    'Origin': 'https://embed13.streamc.xyz',
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',
    'Sec-Fetch-Dest': 'iframe',
    'Sec-Fetch-Mode': 'navigate',
    'Sec-Fetch-Site': 'cross-site'
}

r = requests.get('https://embed13.streamc.xyz/embed.php?hash=0fd818d3dc190f5932666818a1204f25', headers=headers, impersonate='chrome120')
html = r.text

html = html.replace('href="/assets/', 'href="https://embed13.streamc.xyz/assets/')
html = html.replace('src="/assets/', 'src="https://embed13.streamc.xyz/assets/')

patch = """<script>
// CLEAN AD SHIELD
const _origFetch = window.fetch;
window.fetch = async function(...args) {
    const res = await _origFetch.apply(this, args);
    try {
        const clone = res.clone();
        const text = await clone.text();
        if (text.includes('"tvc"')) {
            console.log('>>> [SHIELD] Intercepted NguonC bootstrap! Stripping TVC & Ads...');
            const data = JSON.parse(text);
            data.tvc = { enabled: false };
            data.ads = { enabled: false };
            data.telemetry = {};
            return new Response(JSON.stringify(data), {
                status: res.status,
                statusText: res.statusText,
                headers: res.headers
            });
        }
    } catch(e) {}
    return res;
};
window.open = function() { console.log('>>> [SHIELD] Blocked popup window.open'); return null; };
</script>"""

html = html.replace('<head>', '<head>' + patch)

with open('clean_test.html', 'w', encoding='utf-8') as f:
    f.write(html)
print('Wrote clean_test.html, length:', len(html))
