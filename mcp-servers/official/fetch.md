# Fetch MCP Server

## 🌐 What It Does

**Gives AI the ability to fetch and process web content - HTML, JSON, text from any URL.**

The Fetch server enables AI to scrape websites, fetch API data, download content, and process web pages efficiently.

---

## 🌟 Why It's The Best

### vs Manual Web Scraping
- ✅ **AI-optimized** - Processes content for LLMs
- ✅ **No code needed** - Just give URL
- ✅ **Smart extraction** - Gets relevant content

### vs Paid Web APIs
- ✅ **100% Free** - No subscription
- ✅ **No limits** - Unlimited requests
- ✅ **Direct access** - No middleman

### Key Advantages
- **Multiple formats** - HTML, JSON, plain text
- **Clean output** - Removes ads, scripts, clutter
- **Fast processing** - Optimized for AI consumption

---

## 💰 Cost Comparison

| Alternative | Cost | Limits |
|-------------|------|--------|
| **Fetch MCP** | **FREE** | ♾️ Unlimited |
| ScrapingBee | $49/month | 10,000 requests |
| Apify | $49/month | Limited credits |
| Manual scraping | Time | Complex code |

**Savings: $588/year minimum**

---

## ✨ Features

### Content Fetching
- ✅ **Fetch HTML** - Get webpage content
- ✅ **Fetch JSON** - API responses
- ✅ **Fetch text** - Plain text content
- ✅ **Follow redirects** - Handle URL changes

### Smart Processing
- ✅ **Clean HTML** - Remove scripts, ads
- ✅ **Extract main content** - Get relevant text
- ✅ **Handle errors** - Graceful failures
- ✅ **Efficient** - Optimized for AI

---

## 🚀 Installation

### Zero Config!
```json
{
  "mcpServers": {
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
    }
  }
}
```

---

## ⚙️ Configuration

### All Platforms (Same Config)

```json
{
  "mcpServers": {
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
    }
  }
}
```

---

## 💡 Use Cases

### 1. **Research & Analysis**
```
"Fetch and summarize the latest Next.js documentation"
```
AI gets fresh content and explains it.

### 2. **API Testing**
```
"Fetch data from https://api.example.com/users and analyze the structure"
```
AI retrieves and analyzes API responses.

### 3. **Competitive Analysis**
```
"Compare pricing on these 3 websites: [URLs]"
```
AI fetches and compares information.

### 4. **Content Monitoring**
```
"Check if this blog has new articles: [URL]"
```
AI fetches and detects updates.

### 5. **Documentation Lookup**
```
"Get the latest installation guide from [URL]"
```
AI fetches current documentation.

---

## 🔒 Ethical Use

### ✅ Responsible Scraping
- Respect robots.txt
- Don't overload servers
- Use for legitimate purposes
- Follow website ToS

### Rate Limiting
Be considerate - don't hammer websites.

---

## 📊 Performance

| Content Type | Speed |
|--------------|-------|
| HTML page | <2s |
| JSON API | <500ms |
| Plain text | <300ms |

---

## 🐛 Troubleshooting

### "Failed to fetch"

**Causes:**
- URL is incorrect
- Website blocks automated access
- Network connectivity issues
- Website requires authentication

**Try:**
1. Check URL in browser
2. Verify network connection
3. Try a different website

### "Timeout"

**Fix:**
- Website is slow/down
- Try again later
- Check internet connection

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-fetch](https://www.npmjs.com/package/@modelcontextprotocol/server-fetch)
- **GitHub:** [modelcontextprotocol/servers/fetch](https://github.com/modelcontextprotocol/servers/tree/main/src/fetch)

---

## 🎯 Quick Start

1. Add to config (above)
2. Restart AI assistant
3. Try: *"Fetch https://news.ycombinator.com and summarize top stories"*

---

**Next:** Check out [Time Server](time.md) for date/time operations!
