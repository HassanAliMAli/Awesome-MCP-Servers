# Claude Desktop Setup Guide

## 🎯 What You'll Accomplish

In this 2-minute guide, you'll:
- ✅ Configure MCP servers for Claude Desktop
- ✅ Set up file and memory access
- ✅ Test your configuration
- ✅ Start using Claude with superpowers!

---

## 🚀 Quick Setup (2 Minutes)

### 1. Find Config Location

**Windows:**
```
%APPDATA%\Claude\claude_desktop_config.json
```
Typically: `C:\Users\YourName\AppData\Roaming\Claude\claude_desktop_config.json`

**Mac:**
```
~/Library/Application Support/Claude/claude_desktop_config.json
```

### 2. Edit Config File

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

### 3. Restart Claude Desktop

Close completely and reopen Claude Desktop.

### 4. Test It

Ask Claude: *"List files in my projects directory"*

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

Set in system environment (Claude reads from system):

**Windows (PowerShell):**
```powershell
$env:BRAVE_API_KEY="your-key-here"
```

**Mac/Linux:**
```bash
export BRAVE_API_KEY="your-key-here"
```

### Multiple Directories

Allow access to multiple directories:
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/yourname/Projects",
        "/Users/yourname/Documents"
      ]
    }
  }
}
```

---

## ✅ Verification Steps

### Test Filesystem
Ask: *"Show me all Python files in my projects folder"*

### Test Memory
Ask: *"Remember that my project uses FastAPI"*

Then later: *"What framework does my project use?"*

### Test Sequential Thinking
Ask: *"Think through how to debug this error: [paste error]"*

---

## 🐛 Troubleshooting

### "Config File Not Found"

**Fix:**
1. Ensure the directory exists
2. Create the file if it doesn't exist
3. Use exact path format for your OS

### "Permission Denied"

**Windows:**
1. Check folder security settings
2. Run as administrator if needed

**Mac:**
1. Check System Preferences → Security & Privacy
2. Grant Claude access to files

### "Server Not Responding"

**Fix:**
1. Verify Node.js is installed
2. Check internet connection
3. Restart Claude Desktop

---

## 🎯 Quick Start Checklist

- [ ] Locate config file
- [ ] Add MCP server configuration
- [ ] Restart Claude Desktop
- [ ] Test with simple command
- [ ] Add API keys for third-party servers

---

## 📚 Official Documentation

- **Claude Desktop Docs:** [anthropic.com/claude/desktop](https://anthropic.com/claude/desktop)
- **Model Context Protocol:** [modelcontextprotocol.io](https://modelcontextprotocol.io)

---

**Next:** Try [VS Code Setup](vscode.md) for comparison!
