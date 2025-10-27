# Windsurf Setup Guide

## 🎯 What You'll Accomplish

In this 2-minute guide, you'll:
- ✅ Configure MCP servers for Windsurf IDE
- ✅ Set up file and memory access
- ✅ Test your configuration
- ✅ Start using Windsurf with superpowers!

---

## 🚀 Quick Setup (2 Minutes)

### 1. Create Config File

Create `.windsurf/mcp.json` in your project root:

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

### 2. Restart Windsurf

Close completely and reopen Windsurf.

### 3. Test It

Ask Windsurf: *"List all files in the current directory"*

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

**Windows (PowerShell):**
```powershell
$env:BRAVE_API_KEY="your-key-here"
```

**Mac/Linux:**
```bash
export BRAVE_API_KEY="your-key-here"
```

### Workspace Variables

Windsurf supports these built-in variables:
- `${workspaceFolder}` - Current project directory
- `${workspaceFolderBasename}` - Project folder name

---

## ✅ Verification Steps

### Test Filesystem
Ask: *"Show me all Python files in src directory"*

### Test Memory
Ask: *"Remember that I'm working on a machine learning project"*

Then later: *"What type of project am I working on?"*

### Test Sequential Thinking
Ask: *"Think through how to implement this feature: [describe feature]"*

---

## 🐛 Troubleshooting

### "MCP Server Not Found"

**Fix:**
1. Check file is named `.windsurf/mcp.json`
2. Verify JSON syntax is valid
3. Restart Windsurf completely

### "Command not found: npx"

**Fix:**
1. Install Node.js v18+
2. Verify npx is in PATH
3. Restart terminal/Windsurf

### "Permission Denied"

**Fix:**
1. Check directory permissions
2. Run Windsurf as administrator (Windows)
3. Check file ownership (Mac/Linux)

---

## 🎯 Quick Start Checklist

- [ ] Create `.windsurf/mcp.json`
- [ ] Add your favorite servers
- [ ] Restart Windsurf
- [ ] Test with simple command
- [ ] Add API keys for third-party servers

---

## 📚 Official Documentation

- **Windsurf Docs:** [windsurf.com/docs/mcp](https://windsurf.com/docs/mcp)
- **Model Context Protocol:** [modelcontextprotocol.io](https://modelcontextprotocol.io)

---

**Next:** Try [Gemini CLI Setup](gemini-cli.md) for comparison!
