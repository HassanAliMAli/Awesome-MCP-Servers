# Brave Search MCP Server

## 🔍 What It Does

**Gives AI web search capabilities using Brave's privacy-focused search engine.**

The Brave Search server enables AI to search the web, get current information, and answer questions with up-to-date data - all while protecting your privacy.

---

## 🌟 Why It's The Best

### vs Google Search
- ✅ **Privacy-first** - No tracking or profiling
- ✅ **No ads** - Clean, focused results
- ✅ **Better for AI** - Less noise, more signal

### vs Other Search APIs
- ✅ **Generous free tier** - 2,000 requests/month
- ✅ **No complex pricing** - Simple, transparent
- ✅ **Fast responses** - Optimized for AI

### Key Advantages
- **Current information** - Real-time web data
- **Privacy protection** - Your searches aren't tracked
- **AI-optimized** - Results formatted for LLMs

---

## 💰 Cost Comparison

| Alternative | Free Tier | Cost |
|-------------|-----------|------|
| **Brave Search** | ✅ 2,000/month | FREE |
| Google Programmable Search | 100/day | $5/1000 |
| Bing Web Search | 3/day | $3/1000 |
| SerpAPI | 100/month | $50/month |

**Savings: $600+/year + your privacy!**

---

## ✨ Features

### Search Capabilities
- ✅ **Web search** - Find current information
- ✅ **News search** - Latest news articles
- ✅ **Image search** - Visual results
- ✅ **Video search** - Video content

### AI Features
- ✅ **Summarized results** - Key points extraction
- ✅ **Source links** - Citeable references
- ✅ **Multiple formats** - JSON, HTML, text
- ✅ **Error handling** - Graceful failures

---

## 🚀 Setup & Installation

### 1. Get Brave API Key

1. Go to [Brave Search API](https://api.search.brave.com/)
2. Sign up for a free account
3. Get your API key (2,000 requests/month free)

### 2. Install Server
```bash
# Auto-installed via npx - just add to config!
```

---

## ⚙️ Configuration

### All Platforms (Same Config)

```json
{
  "mcpServers": {
    "brave-search": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-brave-search"],
      "env": {
        "BRAVE_API_KEY": "YOUR_API_KEY_HERE"
      }
    }
  }
}
```

**Replace `YOUR_API_KEY_HERE`** with your actual Brave API key.

---

## 💡 Use Cases

### 1. **Current Information**
```
"What are the latest developments in React 19?"
```
AI searches and summarizes current info.

### 2. **Fact Checking**
```
"Verify if this claim about climate change is accurate"
```
AI searches multiple sources for verification.

### 3. **Research Assistance**
```
"Find recent papers on transformer architecture"
```
AI finds academic papers and summarizes.

### 4. **News Updates**
```
"What happened in tech this week?"
```
AI searches for recent news and summarizes.

### 5. **Competitive Analysis**
```
"Compare features of Next.js vs SvelteKit in 2025"
```
AI searches and provides comparison.

---

## 🔒 Privacy & Security

### ✅ Privacy-First Design

- **No tracking** - Brave doesn't track your searches
- **No profiling** - Results based on query, not history
- **Encrypted** - All API communication is HTTPS
- **Local keys** - API key stored only on your machine

### Best Practices
1. **Store key securely** - Use environment variables
2. **Monitor usage** - Check your request count
3. **Rotate keys** - Change periodically for security

---

## 📊 Performance & Limits

| Metric | Limit |
|--------|-------|
| **Free requests** | 2,000/month |
| **Response time** | <1s |
| **Result freshness** | Real-time |
| **Rate limit** | 10 requests/second |

---

## 🐛 Troubleshooting

### "Invalid API Key"

**Fix:**
1. Verify key is correct
2. Check key hasn't expired
3. Ensure key is active in Brave dashboard

### "Rate Limited"

**Fix:**
1. Wait for rate limit to reset (1 minute)
2. Space out requests
3. Consider upgrading if you need more

### "No Results Found"

**Try:**
1. Rephrase the query
2. Be more specific
3. Check if topic is too niche

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-brave-search](https://www.npmjs.com/package/@modelcontextprotocol/server-brave-search)
- **Brave API:** [Brave Search API](https://api.search.brave.com/)

---

## 🎯 Quick Start

1. Get Brave API key (free)
2. Add to config (see above)
3. Restart AI assistant
4. Try: *"What's new in JavaScript in 2025?"*

---

**Next:** Check out [GitHub Server](github.md) for repository integration!
