const puppeteer = require('puppeteer-core');
const path = require('path');
const fs = require('fs');

async function generatePDF() {
  let browser;
  try {
    const chromePaths = [
      '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
      '/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge',
      '/usr/bin/google-chrome'
    ];
    let executablePath = chromePaths.find(p => fs.existsSync(p));

    if (!executablePath) {
      console.error('Could not find Chrome/Edge executable.');
      process.exit(1);
    }

    browser = await puppeteer.launch({
      executablePath,
      headless: 'new',
      args: [
        '--no-sandbox',
        '--disable-setuid-sandbox',
        '--allow-file-access-from-files',
        '--disable-web-security'
      ]
    });

    const page = await browser.newPage();

    // Explicitly log everything from the page
    page.on('console', msg => console.log('PAGE LOG:', msg.text()));
    page.on('pageerror', err => console.error('PAGE ERROR:', err.message));

    const htmlPath = path.resolve(__dirname, '../src/templates/resume.html');
    const jsonPath = path.resolve(__dirname, '../src/data/profile.json');
    const profileData = JSON.parse(fs.readFileSync(jsonPath, 'utf8'));

    console.log('Loading page:', htmlPath);
    await page.goto(`file://${htmlPath}`, { waitUntil: 'domcontentloaded' });

    console.log('Waiting for render function...');
    await page.waitForFunction(() => typeof window.renderWithData === 'function', { timeout: 5000 });

    console.log('Injecting data and triggering render...');
    await page.evaluate((data) => {
      window.renderWithData(data);
    }, profileData);

    console.log('Waiting for render-complete signal...');
    await page.waitForSelector('.render-complete', { timeout: 5000 });

    await new Promise(r => setTimeout(r, 500));

    const pdfPath = path.resolve(__dirname, '../Jimmy_Huang_Resume.pdf');
    await page.pdf({
      path: pdfPath,
      format: 'A4',
      printBackground: true,
      margin: { top: '0mm', right: '0mm', bottom: '0mm', left: '0mm' }
    });

    console.log(`Successfully generated PDF at: ${pdfPath}`);
  } catch (error) {
    console.error('Error generating PDF:', error);
    process.exit(1);
  } finally {
    if (browser) await browser.close();
  }
}

generatePDF();
