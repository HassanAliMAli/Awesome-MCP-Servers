# Gemini CLI Setup Guide

## 🎯 What You'll Accomplish

In this 2-minute guide, you'll:
- ✅ Configure MCP servers for Gemini CLI
- ✅ Set up file and memory access
- ✅ Test your configuration
- ✅ Start using Gemini with superpowers!

---

## 🚀 Quick Setup (2 Minutes)

### 1. Install Gemini CLI

If not already installed:
```bash
npm install -g @google/gemini-cli
```

### 2. Configure Settings

Create or edit `~/.gemini/settings.json`:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/Users/yourname/Projects"]
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

### 3. Test It

Run Gemini CLI:
```bash
gemini
```

Then ask: *"List files in my projects directory"*

If it works, you're all set! 🎉

---

## ⚙️ Advanced Configuration

### With Third-Party Servers

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/Users/yourname/Projects"]
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
      "args": ["-y", "@modelcontextprotocol/server-postgres", "postgresql://localhost/mydb"]
    }
  }
}
```

---

## 🔧 Platform-Specific Tips

### Environment Variables

Set in your shell profile (`.bashrc`, `.zshrc`, etc.):

**Mac/Linux:**
```bash
export BRAVE_API_KEY="your-key-here"
export POSTGRES_CONNECTION_STRING="postgresql://user:pass@localhost:5432/mydb"
```

**Windows (PowerShell):**
```powershell
$env:BRAVE_API_KEY="your-key-here"
$env:POSTGRES_CONNECTION_STRING="postgresql://user:pass@localhost:5432/mydb"
```

### Project-Specific Config

You can also create `.gemini/settings.json` in individual projects for project-specific MCP servers.

---

## ✅ Verification Steps

### Test Filesystem
Ask: *"Show me all JavaScript files in my current project"*

### Test Memory
Ask: *"Remember that I'm working on a web application"*

Then later: *"What type of application am I building?"*

### Test Sequential Thinking
Ask: *"Think through how to solve this coding challenge: [describe challenge]"*

---

## 🐛 Troubleshooting

### "Settings File Not Found"

**Fix:**
1. Ensure the directory `~/.gemini/` exists
2. Create the file if it doesn't exist
3. Use exact path format for your OS

### "Command not found: npx"

**Fix:**
1. Install Node.js v18+
2. Verify npx is in PATH
3. Restart terminal

### "Permission Denied"

**Fix:**
1. Check directory permissions
2. Ensure `~/.gemini/` is writable
3. Check file ownership

---

## 🎯 Quick Start Checklist

- [ ] Install Gemini CLI
- [ ] Create `~/.gemini/settings.json`
- [ ] Add MCP server configuration
- [ ] Test with simple command
- [ ] Add API keys for third-party servers

---

## 📚 Official Documentation

- **Gemini CLI Docs:** [ai.google.dev/gemini-cli](https://ai.google.dev/gemini-cli)
- **Model Context Protocol:** [modelcontextprotocol.io](https://modelcontextprotocol.io)

---

**Next:** Try [Zed Setup](zed.md) for comparison!
