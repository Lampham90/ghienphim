const puppeteer = require('puppeteer-core');

async function testBypass() {
  const browser = await puppeteer.launch({
    executablePath: 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe',
    headless: false,
    defaultViewport: null,
    args: [
      '--disable-blink-features=AutomationControlled',
      '--no-sandbox',
      '--window-size=1200,800'
    ]
  });

  const page = await browser.newPage();
  
  // Remove webdriver flag
  await page.evaluateOnNewDocument(() => {
    Object.defineProperty(navigator, 'webdriver', { get: () => undefined });
  });

  page.on('request', req => {
    const u = req.url();
    if (u.includes('.png') || u.includes('.m3u8') || u.includes('output.mp4') || u.includes('bootstrap')) {
      console.log('-> [REQ]', req.method(), u.slice(0, 110));
      if (u.includes('.png') || u.includes('bootstrap')) {
        console.log('   Req Headers:', req.headers());
      }
    }
  });

  page.on('response', res => {
    const u = res.url();
    if (u.includes('.png') || u.includes('.m3u8') || u.includes('output.mp4') || u.includes('bootstrap')) {
      console.log('<- [RES]', res.status(), u.slice(0, 110));
      if (u.includes('.png')) {
        console.log('   Res Headers:', res.headers());
      }
    }
  });

  console.log("Navigating...");
  await page.goto('https://embed13.streamc.xyz/embed.php?hash=0fd818d3dc190f5932666818a1204f25', {
    waitUntil: 'networkidle2',
    timeout: 30000
  });

  console.log("Title:", await page.title());

  // Wait 15 seconds to observe playback
  await new Promise(r => setTimeout(r, 15000));

  await browser.close();
  console.log("Finished observation.");
}

testBypass().catch(console.error);
