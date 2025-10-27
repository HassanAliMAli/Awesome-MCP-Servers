# Official MCP Servers

These are the **official reference servers** maintained by the Model Context Protocol team at Anthropic.

## ⭐ Why Official Servers?

- ✅ **Maintained by MCP creators** - Highest quality
- ✅ **Always up-to-date** with latest MCP spec
- ✅ **100% Free** - No limits, no tiers
- ✅ **Battle-tested** - Used by thousands
- ✅ **Best practices** - Clean code examples

---

## 📦 Available Official Servers

| Server | What It Does | Use When |
|--------|--------------|----------|
| **[Filesystem](filesystem.md)** | Secure file operations | You want AI to read/write files |
| **[Git](git.md)** | Repository operations | Working with Git repos |
| **[Memory](memory.md)** | Persistent AI memory | AI should remember across chats |
| **[Sequential Thinking](sequential-thinking.md)** | Advanced reasoning | Complex problem-solving |
| **[Fetch](fetch.md)** | Web content retrieval | Scrape websites, fetch data |
| **[Time](time.md)** | Time/timezone operations | Handle dates and timezones |

---

## 🚀 Quick Install (All at Once)

**Want all official servers?** Copy this config:

### For Cursor / Windsurf
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "C:\\Users\\YourName\\Projects"]
    },
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    },
    "git": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-git", "--repository", "C:\\Users\\YourName\\Projects\\your-repo"]
    },
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
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
- ✅ Official documentation links
