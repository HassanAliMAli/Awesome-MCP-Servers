# Cursor Setup Guide

## 🎯 What You'll Accomplish

In this 2-minute guide, you'll:
- ✅ Install and configure all official MCP servers
- ✅ Set up popular third-party servers
- ✅ Test your configuration
- ✅ Start using AI with superpowers!

---

## 🚀 Quick Setup (2 Minutes)

### 1. Create Config File

Create `.cursor/mcp.json` in your project root:

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
    },
    "git": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-git", "--repository", "${workspaceFolder}"]
    }
  }
}
```

### 2. Restart Cursor

Close and reopen Cursor to load the configuration.

### 3. Test It

Ask Cursor: *"List all files in the current directory"*

If it works, you're all set! 🎉

---

## 📁 File Location

### Windows
```
C:\Users\YourName\Projects\YourProject\.cursor\mcp.json
```

### Mac/Linux
```
/Users/yourname/projects/yourproject/.cursor/mcp.json
```

**Tip:** You can also use `.mcp.json` in project root if you prefer.

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

Set in Cursor settings or system environment:

**Windows (PowerShell):**
```powershell
$env:BRAVE_API_KEY="your-key-here"
```

**Mac/Linux:**
```bash
export BRAVE_API_KEY="your-key-here"
```

### Workspace Variables

Cursor supports these built-in variables:
- `${workspaceFolder}` - Current project directory
- `${workspaceFolderBasename}` - Project folder name
- `${pathSeparator}` - OS-specific path separator

---

## ✅ Verification Steps

### Test Filesystem
Ask: *"List all .js files in src directory"*

### Test Memory
Ask: *"Remember that I prefer React over Vue"*

Then later: *"What UI framework do I prefer?"*

### Test Sequential Thinking
Ask: *"Think through how to implement a login system"*

### Test Git
Ask: *"Show me the last 5 commits"*

---

## 🐛 Troubleshooting

### "MCP Server Not Found"

**Fix:**
1. Check file is named `.cursor/mcp.json`
2. Verify JSON syntax is valid
3. Restart Cursor completely

### "Command not found: npx"

**Fix:**
1. Install Node.js v18+
2. Verify npx is in PATH
3. Restart terminal/Cursor

### "Permission Denied"

**Fix:**
1. Check directory permissions
2. Run Cursor as administrator (Windows)
3. Check file ownership (Mac/Linux)

---

## 🎯 Quick Start Checklist

- [ ] Create `.cursor/mcp.json`
- [ ] Add your favorite servers
- [ ] Restart Cursor
- [ ] Test with simple command
- [ ] Add API keys for third-party servers

---

## 📚 Official Documentation

- **Cursor MCP Docs:** [cursor.sh/docs/mcp](https://cursor.sh/docs/mcp)
- **Model Context Protocol:** [modelcontextprotocol.io](https://modelcontextprotocol.io)

---

**Next:** Try [Claude Desktop Setup](claude-desktop.md) for comparison!
