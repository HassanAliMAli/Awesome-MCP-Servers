# Git MCP Server

## 🔧 What It Does

**Gives AI direct access to your Git repositories - read commits, search code, analyze history.**

The Git server lets AI understand your repo's history, search through commits, analyze code changes, and provide insights based on your Git data.

---

## 🌟 Why It's The Best

### vs Manual Git Commands
- ✅ **AI understands context** - Reads commit history automatically
- ✅ **Natural language** - No complex git commands
- ✅ **Cross-file analysis** - Sees the big picture

### vs GitHub API
- ✅ **Works offline** - Local repository access
- ✅ **No rate limits** - Unlimited operations
- ✅ **Faster** - Direct file access

### Key Advantages
- **Deep analysis** - AI reads full commit history
- **Pattern detection** - Finds code evolution trends
- **Smart search** - Natural language repo search

---

## 💰 Cost Comparison

| Alternative | Cost | Limits |
|-------------|------|--------|
| **Git MCP** | **FREE** | ♾️ Unlimited |
| GitHub Advanced Security | $49/user/month | Limited features |
| GitLens Premium | $5/month | Per-IDE license |

**Savings: $600+/year per developer**

---

## ✨ Features

### Repository Operations
- ✅ **Read commit history** - Full log access
- ✅ **Search code** - Find files and content
- ✅ **Analyze changes** - See code evolution
- ✅ **Branch operations** - View branch structure

### Advanced Analysis
- ✅ **Blame analysis** - Who changed what
- ✅ **File history** - Track file evolution
- ✅ **Pattern detection** - Find trends
- ✅ **Contributor insights** - Team analytics

---

## 🚀 Installation

### Prerequisites
```bash
git --version  # Git must be installed
node --version # v18 or higher
```

---

## ⚙️ Configuration

### Cursor / Windsurf
```json
{
  "mcpServers": {
    "git": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-git",
        "--repository",
        "C:\\Users\\YourName\\Projects\\your-repo"
      ]
    }
  }
}
```

### Claude Desktop
```json
{
  "mcpServers": {
    "git": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-git",
        "--repository",
        "/Users/yourname/Projects/your-repo"
      ]
    }
  }
}
```

### VS Code (Workspace)
```json
{
  "mcpServers": {
    "git": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-git",
        "--repository",
        "${workspaceFolder}"
      ]
    }
  }
}
```

---

## 💡 Use Cases

### 1. **Understand Code Changes**
```
"What changed in the authentication system last month?"
```
AI reads commits and explains changes.

### 2. **Find Who Introduced a Bug**
```
"Who last modified the payment processing code?"
```
AI uses git blame to identify contributors.

### 3. **Code Evolution Analysis**
```
"How has the database schema evolved over time?"
```
AI analyzes commit history for patterns.

### 4. **Onboarding New Developers**
```
"Explain the project structure based on commit history"
```
AI reads commits to understand architecture decisions.

### 5. **Generate Changelogs**
```
"Create a changelog from last week's commits"
```
AI summarizes commits into readable format.

---

## 🔒 Security

### ✅ Read-Only Operations

The Git server only **reads** your repository:
- ❌ Cannot commit
- ❌ Cannot push
- ❌ Cannot delete
- ✅ Only analyzes and reads

### Safe to Use
- Works with local repositories
- No network access required
- Your code stays on your machine

---

## 📊 Performance

| Operation | Speed |
|-----------|-------|
| Read commit log | <100ms |
| Search code | <200ms |
| Analyze file history | <500ms |
| Branch analysis | <1s |

---

## 🐛 Troubleshooting

### "Repository not found"

**Fix:**
1. Check path is correct
2. Ensure it's a valid Git repository
3. Run `git status` in that directory to verify

### "Permission denied"

**Fix:**
1. Ensure you have read access to the directory
2. On Windows: Check folder security settings
3. On Mac/Linux: Check file permissions

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-git](https://www.npmjs.com/package/@modelcontextprotocol/server-git)
- **GitHub:** [modelcontextprotocol/servers/git](https://github.com/modelcontextprotocol/servers/tree/main/src/git)

---

## 🎯 Quick Start

1. Install Git (if not already)
2. Add config pointing to your repo
3. Restart AI assistant
4. Try: *"Summarize the last 10 commits"*

---

**Next:** Learn about [Fetch Server](fetch.md) for web scraping!
