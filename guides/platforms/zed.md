# Zed Setup Guide

## 🎯 What You'll Accomplish

In this 2-minute guide, you'll:
- ✅ Configure MCP servers for Zed Editor
- ✅ Set up file and memory access
- ✅ Test your configuration
- ✅ Start using Zed with superpowers!

---

## 🚀 Quick Setup (2 Minutes)

### 1. Create Config File

Create `.zed/mcp.json` in your project root:

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

### 2. Restart Zed

Close completely and reopen Zed.

### 3. Test It

Ask Zed: *"List all files in the current directory"*

If it works, you're all set! 🎉

---

## ⚙️ Advanced Configuration

### With Third-Party Servers

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "${workspaceFolder}"]
    },
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
    }
  }
}
```

---

## 🔧 Platform-Specific Tips

### Environment Variables

Set in system environment:

**Mac/Linux:**
```bash
export BRAVE_API_KEY="your-key-here"
```

**Windows (PowerShell):**
```powershell
$env:BRAVE_API_KEY="your-key-here"
```

### Workspace Variables

Zed supports these built-in variables:
- `${workspaceFolder}` - Current project directory
- `${workspaceFolderBasename}` - Project folder name

---

## ✅ Verification Steps

### Test Filesystem
Ask: *"Show me all Rust files in src directory"*

### Test Memory
Ask: *"Remember that this is a systems programming project"*

Then later: *"What type of programming is this project focused on?"*

### Test Sequential Thinking
Ask: *"Think through how to implement this algorithm: [describe algorithm]"*

---

## 🐛 Troubleshooting

### "MCP Server Not Found"

**Fix:**
1. Check file is named `.zed/mcp.json`
2. Verify JSON syntax is valid
3. Restart Zed completely

### "Command not found: npx"

**Fix:**
1. Install Node.js v18+
2. Verify npx is in PATH
3. Restart terminal/Zed

### "Permission Denied"

**Fix:**
1. Check directory permissions
2. Run Zed as administrator (Windows)
3. Check file ownership (Mac/Linux)

---

## 🎯 Quick Start Checklist

- [ ] Create `.zed/mcp.json`
- [ ] Add your favorite servers
- [ ] Restart Zed
- [ ] Test with simple command
- [ ] Add API keys for third-party servers

---

## 📚 Official Documentation

- **Zed Docs:** [zed.dev/docs/mcp](https://zed.dev/docs/mcp)
- **Model Context Protocol:** [modelcontextprotocol.io](https://modelcontextprotocol.io)

---

**That's all platform guides complete!** ✅

**Next:** Check out [Use Case Guides](../use-cases/) to see MCP in action!
