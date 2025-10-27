# Playwright MCP Server

## 🎭 What It Does

**Gives AI browser automation capabilities - click, type, scrape, test websites.**

The Playwright server enables AI to control browsers, automate testing, scrape websites, and interact with web applications just like a human user.

---

## 🌟 Why It's The Best

### vs Manual Testing
- ✅ **Automated workflows** - No repetitive clicking
- ✅ **24/7 operation** - Works while you sleep
- ✅ **Consistent results** - No human error

### vs Other Automation Tools
- ✅ **Cross-browser** - Chrome, Firefox, Safari, Edge
- ✅ **Headless** - Runs without UI (fast)
- ✅ **Built for developers** - Easy to use and extend

### Key Advantages
- **Full browser control** - Click, type, scroll, wait
- **Smart waiting** - Waits for elements automatically
- **Screenshots** - Visual verification
- **Network monitoring** - Track API calls

---

## 💰 Cost Comparison

| Alternative | Cost |
|-------------|------|
| **Playwright MCP** | **FREE** |
| Cypress Dashboard | $25/month |
| Selenium Grid | $$$ for infrastructure |
| BrowserStack | $39/month |

**Savings: $468+/year for unlimited automation**

---

## ✨ Features

### Browser Automation
- ✅ **Navigate pages** - Go to URLs
- ✅ **Click elements** - Buttons, links, forms
- ✅ **Type text** - Fill inputs, search boxes
- ✅ **Scroll pages** - Navigate long content

### Testing Capabilities
- ✅ **Assertions** - Check page content
- ✅ **Screenshots** - Visual verification
- ✅ **Video recording** - Record test runs
- ✅ **Network monitoring** - Track requests

### Scraping Features
- ✅ **Extract data** - Get text, attributes
- ✅ **Handle dynamic content** - Wait for JS
- ✅ **Download files** - Save content
- ✅ **Handle authentication** - Login flows

---

## 🚀 Setup & Installation

### Prerequisites
```bash
node --version  # v18 or higher
# Playwright installs browsers automatically
```

### Install Server
```bash
# Auto-installed via npx - just add to config!
```

---

## ⚙️ Configuration

### All Platforms (Same Config)

```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-playwright"]
    }
  }
}
```

**No API keys needed!** Playwright works out of the box.

---

## 💡 Use Cases

### 1. **Automated Testing**
```
"Test the login flow on our website and report any issues"
```
AI navigates, tests, and reports results.

### 2. **Data Scraping**
```
"Scrape the latest prices from these e-commerce sites"
```
AI visits sites and extracts pricing data.

### 3. **Form Automation**
```
"Fill out this application form with my details"
```
AI fills forms automatically.

### 4. **Screenshot Comparison**
```
"Take screenshots of our homepage on different browsers"
```
AI captures and compares visual states.

### 5. **Workflow Automation**
```
"Check if our site is up and send me a screenshot"
```
AI monitors sites and reports status.

---

## 🔒 Security

### ✅ Safe Automation

- **Local execution** - Runs on your machine
- **No data collection** - Your browsing data stays local
- **Controlled access** - AI only does what you ask
- **Sandboxed** - Isolated from your system

### Best Practices
1. **Review scripts** - Check what AI wants to do
2. **Limit scope** - Don't give full system access
3. **Monitor execution** - Watch what runs
4. **Use headless mode** - Faster and cleaner

---

## 📊 Performance

| Operation | Speed |
|-----------|-------|
| Page load | <2s |
| Click action | <100ms |
| Text input | <200ms |
| Screenshot | <500ms |

---

## 🐛 Troubleshooting

### "Browser Not Found"

**Fix:**
1. Let Playwright install browsers automatically
2. Run: `npx playwright install`
3. Check internet connection

### "Element Not Found"

**Fix:**
1. Verify element exists on page
2. Wait for page to load completely
3. Check if element is in iframe
4. Try different selectors

### "Timeout Error"

**Fix:**
1. Increase wait time
2. Check if page is loading slowly
3. Verify URL is correct
4. Check network connectivity

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-playwright](https://www.npmjs.com/package/@modelcontextprotocol/server-playwright)
- **Playwright Docs:** [playwright.dev](https://playwright.dev/)

---

## 🎯 Quick Start

1. Add to config (see above)
2. Restart AI assistant
3. Try: *"Go to https://example.com and take a screenshot"*

---

**Next:** Check out [PostgreSQL Server](postgres.md) for database queries!
