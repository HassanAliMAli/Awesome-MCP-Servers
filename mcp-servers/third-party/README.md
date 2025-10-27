# Third-Party MCP Servers

These are **community-built servers** that extend MCP capabilities beyond the official reference implementations.

## ⭐ Why Third-Party Servers?

- ✅ **Specialized features** - Solve specific problems
- ✅ **Cutting-edge** - Latest innovations
- ✅ **Community-driven** - Built by users like you
- ✅ **Extensive coverage** - Fill gaps in official servers

---

## 🌟 Top Third-Party Servers

| Server | What It Does | Free Tier |
|--------|--------------|-----------|
| **[Brave Search](brave-search.md)** | Web search for AI | ✅ 2,000/month |
| **[GitHub](github.md)** | GitHub API integration | ✅ Unlimited |
| **[Playwright](playwright.md)** | Browser automation | ✅ Unlimited |
| **[PostgreSQL](postgres.md)** | Database queries | ✅ Unlimited |
| **[GitLab](gitlab.md)** | GitLab operations | ✅ Unlimited |

---

## 🚀 Quick Install (Popular Bundle)

**Want the most popular third-party servers?** Copy this config:

### For Cursor / Windsurf
```json
{
  "mcpServers": {
    "brave-search": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-brave-search"],
      "env": {
        "BRAVE_API_KEY": "YOUR_API_KEY_HERE"
      }
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "YOUR_TOKEN_HERE"
      }
    },
    "playwright": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-playwright"]
    }
  }
}
```

---

## 📖 Individual Server Guides

Click any server above for:
- ✅ Detailed features
- ✅ Why it's the best
- ✅ Configuration examples
- ✅ Use cases
- ✅ Setup instructions
