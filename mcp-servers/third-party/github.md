# GitHub MCP Server

## 🐙 What It Does

**Gives AI direct access to GitHub repositories, issues, pull requests, and more.**

The GitHub server enables AI to interact with GitHub repositories, read files, search code, manage issues, and automate workflows - all through natural language.

---

## 🌟 Why It's The Best

### vs Manual GitHub Use
- ✅ **AI understands context** - Reads repo structure automatically
- ✅ **Automated actions** - Create issues, review PRs
- ✅ **Cross-repo analysis** - Compare multiple repositories

### vs GitHub API Directly
- ✅ **Natural language** - No complex API calls
- ✅ **Error handling** - Graceful failures
- ✅ **Smart rate limiting** - Automatic backoff

### Key Advantages
- **Full GitHub access** - Repos, issues, PRs, users
- **Smart search** - Find code and issues intelligently
- **Workflow automation** - Automate common tasks

---

## 💰 Cost Comparison

| Alternative | Cost |
|-------------|------|
| **GitHub MCP** | **FREE** (your GitHub account) |
| GitHub Copilot | $10/month |
| GitHub Advanced Security | $49/user/month |

**Savings: $500+/year with full GitHub access**

---

## ✨ Features

### Repository Operations
- ✅ **Read files** - Get file contents
- ✅ **Search code** - Find code snippets
- ✅ **List directories** - Navigate repo structure
- ✅ **File history** - See commit history

### Issue Management
- ✅ **Create issues** - New bug reports/features
- ✅ **Read issues** - Get issue details
- ✅ **Search issues** - Find existing issues
- ✅ **Comment on issues** - Add to discussions

### Pull Request Operations
- ✅ **Review PRs** - Analyze code changes
- ✅ **Comment on PRs** - Provide feedback
- ✅ **Merge PRs** - Accept changes
- ✅ **Create PRs** - Propose changes

---

## 🚀 Setup & Installation

### 1. Get GitHub Personal Access Token

1. Go to [GitHub Settings](https://github.com/settings/tokens)
2. Click "Generate new token"
3. Select scopes:
   - `repo` - Full control of private repositories
   - `read:org` - Read org and team membership
4. Generate token and save it

### 2. Install Server
```bash
# Auto-installed via npx - just add to config!
```

---

## ⚙️ Configuration

### All Platforms (Same Config)

```json
{
  "mcpServers": {
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

**Replace `YOUR_TOKEN_HERE`** with your actual GitHub token.

---

## 💡 Use Cases

### 1. **Code Review**
```
"Review this pull request and suggest improvements"
```
AI analyzes code changes and provides feedback.

### 2. **Bug Investigation**
```
"Find all issues related to authentication and summarize them"
```
AI searches issues and creates summary.

### 3. **Documentation Updates**
```
"Create an issue to document the new API endpoints"
```
AI creates structured issue with details.

### 4. **Repository Analysis**
```
"Analyze the codebase structure and identify key components"
```
AI reads files and explains architecture.

### 5. **Automated PRs**
```
"Create a pull request to update the README with latest features"
```
AI generates and submits PR.

---

## 🔒 Security

### ✅ Secure by Design

- **Token stored locally** - Never sent to third parties
- **Limited scope** - Only access you grant
- **Read/write controls** - Configure permissions
- **Audit trail** - GitHub logs all actions

### Best Practices
1. **Use fine-grained tokens** - Limit access to needed repos
2. **Regular rotation** - Change tokens periodically
3. **Monitor activity** - Check GitHub audit logs
4. **Revoke unused** - Remove tokens when not needed

---

## 📊 Performance

| Operation | Speed |
|-----------|-------|
| Read file | <500ms |
| Search code | <1s |
| Create issue | <1s |
| Review PR | <2s |

---

## 🐛 Troubleshooting

### "Authentication Failed"

**Fix:**
1. Verify token is correct
2. Check token hasn't expired
3. Ensure token has required scopes
4. Regenerate token if needed

### "Rate Limited"

**Fix:**
1. Wait for rate limit to reset (1 hour)
2. GitHub has generous limits (5000/hour)
3. Consider using GitHub Enterprise for higher limits

### "Repository Not Found"

**Fix:**
1. Check repository name spelling
2. Verify you have access to the repository
3. Ensure repository exists

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-github](https://www.npmjs.com/package/@modelcontextprotocol/server-github)
- **GitHub:** [modelcontextprotocol/servers/github](https://github.com/modelcontextprotocol/servers/tree/main/src/github)

---

## 🎯 Quick Start

1. Create GitHub token with `repo` scope
2. Add to config (see above)
3. Restart AI assistant
4. Try: *"List all files in the src directory of my repo"*

---

**Next:** Explore [Playwright Server](playwright.md) for browser automation!
