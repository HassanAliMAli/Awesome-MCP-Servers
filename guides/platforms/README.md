# Platform Setup Guides

Configure MCP servers for your favorite AI assistant tools.

## 🎯 Quick Setup

Pick your platform and get started in minutes:

| Platform | Setup Guide | Difficulty |
|----------|-------------|------------|
| **[Cursor](cursor.md)** | 2-minute setup | ⭐ Easy |
| **[Claude Desktop](claude-desktop.md)** | 2-minute setup | ⭐ Easy |
| **[VS Code](vscode.md)** | 3-minute setup | ⭐ Easy |
| **[Windsurf](windsurf.md)** | 2-minute setup | ⭐ Easy |
| **[Gemini CLI](gemini-cli.md)** | 2-minute setup | ⭐ Easy |
| **[Zed](zed.md)** | 2-minute setup | ⭐ Easy |

---

## 📦 What You'll Learn

Each guide covers:
- ✅ **Exact file locations** for your platform
- ✅ **Step-by-step instructions** with screenshots
- ✅ **Platform-specific tips** and tricks
- ✅ **Troubleshooting** common issues
- ✅ **Verification steps** to confirm setup

---

## 🚀 Recommended Starting Point

**New to MCP?** Start with the **[Quick Start Guide](../../QUICKSTART.md)** first, then pick your platform.

**Experienced user?** Jump directly to your platform below.

---

## 📖 Platform Guides

### [Cursor Setup →](cursor.md)
The developer-first AI code editor with native MCP support.

### [Claude Desktop Setup →](claude-desktop.md)
Anthropic's powerful desktop AI with full MCP integration.

### [VS Code Setup →](vscode.md)
Microsoft's popular editor with GitHub Copilot MCP support.

### [Windsurf Setup →](windsurf.md)
The AI-powered IDE built for developers.

### [Gemini CLI Setup →](gemini-cli.md)
Google's CLI tool with MCP capabilities.

### [Zed Setup →](zed.md)
The fast, collaborative code editor with MCP support.

---

## 🎯 Quick Universal Config

Want to try multiple platforms? Use this universal config format:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "${workspaceFolder}"]
    },
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    }
  }
}
```

**Just replace `${workspaceFolder}` with your actual path!**

---

## 🤝 Need Help?

- **[Discussions](https://github.com/HassanAliMAli/Awesome-MCP-Servers/discussions)** - Ask questions
- **[Issues](https://github.com/HassanAliMAli/Awesome-MCP-Servers/issues)** - Report problems
- **[Contributing](../../CONTRIBUTING.md)** - Improve these guides
