# VS Code Setup Guide

## 🎯 What You'll Accomplish

In this 3-minute guide, you'll:
- ✅ Configure MCP servers for VS Code with GitHub Copilot
- ✅ Set up file and memory access
- ✅ Test your configuration
- ✅ Start using Copilot with superpowers!

---

## 🚀 Quick Setup (3 Minutes)

### 1. Install GitHub Copilot Extension

1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X)
3. Search for "GitHub Copilot"
4. Install the official extension

### 2. Create Config File

Create `.vscode/mcp.json` in your project root:

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

### 3. Restart VS Code

Close completely and reopen VS Code.

### 4. Test It

Ask Copilot: *"List all files in the current project"*

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
    "postgres": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres", "${POSTGRES_CONNECTION_STRING}"]
    }
  }
}
```

---

## 🔧 Platform-Specific Tips

### Environment Variables

Set in VS Code settings or system environment:

**Windows (PowerShell):**
```powershell
$env:POSTGRES_CONNECTION_STRING="postgresql://user:pass@localhost:5432/mydb"
```

**Mac/Linux:**
```bash
export POSTGRES_CONNECTION_STRING="postgresql://user:pass@localhost:5432/mydb"
```

### Workspace Variables

VS Code supports these built-in variables:
- `${workspaceFolder}` - Current project directory
- `${workspaceFolderBasename}` - Project folder name
- `${pathSeparator}` - OS-specific path separator

### Settings Configuration

You can also add to VS Code settings (`settings.json`):

```json
{
  "github.copilot.advanced": {
    "mcpConfigFile": ".vscode/mcp.json"
  }
}
```

---

## ✅ Verification Steps

### Test Filesystem
Ask: *"Show me all React components in src/components"*

### Test Memory
Ask: *"Remember that this project uses TypeScript"*

Then later: *"What language is this project written in?"*

### Test Sequential Thinking
Ask: *"Think through how to optimize this database query"*

---

## 🐛 Troubleshooting

### "MCP Config Not Loading"

**Fix:**
1. Check file is named `.vscode/mcp.json`
2. Verify JSON syntax is valid
3. Ensure GitHub Copilot extension is installed
4. Restart VS Code

### "Command not found: npx"

**Fix:**
1. Install Node.js v18+
2. Verify npx is in PATH
3. Restart terminal/VS Code

### "Permission Denied"

**Fix:**
1. Check directory permissions
2. Run VS Code as administrator (Windows)
3. Check file ownership (Mac/Linux)

---

## 🎯 Quick Start Checklist

- [ ] Install GitHub Copilot extension
- [ ] Create `.vscode/mcp.json`
- [ ] Add your favorite servers
- [ ] Restart VS Code
- [ ] Test with simple command
- [ ] Add API keys for third-party servers

---

## 📚 Official Documentation

- **GitHub Copilot Docs:** [docs.github.com/copilot](https://docs.github.com/copilot)
- **VS Code MCP Support:** [code.visualstudio.com/docs/copilot](https://code.visualstudio.com/docs/copilot)
- **Model Context Protocol:** [modelcontextprotocol.io](https://modelcontextprotocol.io)

---

**Next:** Try [Windsurf Setup](windsurf.md) for comparison!
