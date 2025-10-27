# GitLab MCP Server

## 🦊 What It Does

**Gives AI direct access to GitLab repositories, issues, merge requests, and more.**

The GitLab server enables AI to interact with GitLab repositories, read files, search code, manage issues, and automate workflows - similar to the GitHub server but for GitLab.

---

## 🌟 Why It's The Best

### vs Manual GitLab Use
- ✅ **AI understands context** - Reads repo structure automatically
- ✅ **Automated actions** - Create issues, review MRs
- ✅ **Cross-project analysis** - Compare multiple projects

### vs GitLab API Directly
- ✅ **Natural language** - No complex API calls
- ✅ **Error handling** - Graceful failures
- ✅ **Smart rate limiting** - Automatic backoff

### Key Advantages
- **Full GitLab access** - Repos, issues, MRs, users
- **Smart search** - Find code and issues intelligently
- **Workflow automation** - Automate common tasks
- **Self-hosted support** - Works with GitLab self-hosted

---

## 💰 Cost Comparison

| Alternative | Cost |
|-------------|------|
| **GitLab MCP** | **FREE** (your GitLab account) |
| GitLab Premium | $19/user/month |
| GitLab Ultimate | $99/user/month |

**Savings: $228+/year with full GitLab access**

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

### Merge Request Operations
- ✅ **Review MRs** - Analyze code changes
- ✅ **Comment on MRs** - Provide feedback
- ✅ **Merge MRs** - Accept changes
- ✅ **Create MRs** - Propose changes

---

## 🚀 Setup & Installation

### 1. Get GitLab Personal Access Token

1. Go to your GitLab profile → Access Tokens
2. Click "Add new token"
3. Select scopes:
   - `read_api` - Read API access
   - `read_repository` - Read repository contents
   - `write_repository` - Write repository contents (optional)
4. Generate token and save it

### 2. Install Server
```bash
# Auto-installed via npx - just add to config!
```

---

## ⚙️ Configuration

### For GitLab.com

```json
{
  "mcpServers": {
    "gitlab": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-gitlab"],
      "env": {
        "GITLAB_PERSONAL_ACCESS_TOKEN": "YOUR_TOKEN_HERE"
      }
    }
  }
}
```

### For Self-Hosted GitLab

```json
{
  "mcpServers": {
    "gitlab": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-gitlab",
        "--gitlab-url",
        "https://gitlab.yourcompany.com"
      ],
      "env": {
        "GITLAB_PERSONAL_ACCESS_TOKEN": "YOUR_TOKEN_HERE"
      }
    }
  }
}
```

**Replace `YOUR_TOKEN_HERE`** with your actual GitLab token.

---

## 💡 Use Cases

### 1. **Code Review**
```
"Review this merge request and suggest improvements"
```
AI analyzes code changes and provides feedback.

### 2. **Issue Investigation**
```
"Find all issues related to performance and summarize them"
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

### 5. **Automated MRs**
```
"Create a merge request to update the README with latest features"
```
AI generates and submits MR.

---

## 🔒 Security

### ✅ Secure by Design

- **Token stored locally** - Never sent to third parties
- **Limited scope** - Only access you grant
- **Read/write controls** - Configure permissions
- **Audit trail** - GitLab logs all actions

### Best Practices
1. **Use fine-grained tokens** - Limit access to needed projects
2. **Regular rotation** - Change tokens periodically
3. **Monitor activity** - Check GitLab audit logs
4. **Revoke unused** - Remove tokens when not needed

---

## 📊 Performance

| Operation | Speed |
|-----------|-------|
| Read file | <500ms |
| Search code | <1s |
| Create issue | <1s |
| Review MR | <2s |

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
1. Wait for rate limit to reset
2. GitLab has generous limits
3. Consider using GitLab Premium for higher limits

### "Project Not Found"

**Fix:**
1. Check project name/path spelling
2. Verify you have access to the project
3. Ensure project exists

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-gitlab](https://www.npmjs.com/package/@modelcontextprotocol/server-gitlab)

---

## 🎯 Quick Start

1. Create GitLab token with required scopes
2. Add to config (see above)
3. Restart AI assistant
4. Try: *"List all files in the src directory of my project"*

---

**That's all popular third-party servers!** ✅

**Next:** Check out [Platform Setup Guides](../../guides/platforms/) to configure these servers!
