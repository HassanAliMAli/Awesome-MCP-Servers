# 🚀 5-Minute Quick Start

Get up and running with Awesome MCP Servers in just 5 minutes.

## 🎯 What You'll Accomplish

By the end of this guide, you'll have:
- ✅ All MCP servers configured and running
- ✅ Self-hosted infrastructure deployed
- ✅ Platform-specific setup completed
- ✅ First AI assistant interaction

---

## ⚡ Super Fast Setup (2 Minutes)

### Option 1: Just MCP Servers

If you only want MCP servers (no self-hosted tools):

```bash
# Install Node.js v18+ first
# Then create this config file:

# ~/.gemini/settings.json (macOS/Linux)
# %APPDATA%\gemini\settings.json (Windows)

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

**That's it!** Restart your AI assistant and start using MCP servers.

---

## 🚀 Full Setup (5 Minutes)

### 1. Prerequisites

Install these first:
- **Docker** - [Download Docker Desktop](https://www.docker.com/products/docker-desktop/)
- **Node.js v18+** - [Download Node.js](https://nodejs.org/)

### 2. Clone Repository

```bash
git clone https://github.com/HassanAliMAli/Awesome-MCP-Servers.git
cd Awesome-MCP-Servers
```

### 3. Configure Environment

```bash
# Copy example config
cp scripts/.env.example scripts/.env

# Edit .env with your passwords
# (On Windows, use Notepad scripts/.env)
```

### 4. Start Everything

```bash
cd scripts
docker-compose up -d
```

### 5. Configure Your AI Assistant

Pick your platform:
- **[Cursor Setup](guides/platforms/cursor.md)**
- **[Claude Desktop Setup](guides/platforms/claude-desktop.md)**
- **[VS Code Setup](guides/platforms/vscode.md)**
- **[Windsurf Setup](guides/platforms/windsurf.md)**
- **[Gemini CLI Setup](guides/platforms/gemini-cli.md)**
- **[Zed Setup](guides/platforms/zed.md)**

---

## 🎯 First Steps with MCP

### Test File Operations
Ask your AI: *"List all files in the current directory"*

### Test Memory
Ask: *"Remember that I'm working on an MCP project"*

Then later: *"What project am I working on?"*

### Test Sequential Thinking
Ask: *"Think through how to build a file organizer tool"*

---

## 📊 What You Get

### MCP Servers (Instant Access)
- **Filesystem** - Read/write files
- **Memory** - Persistent AI memory
- **Sequential Thinking** - Advanced reasoning
- **Git** - Repository operations
- **Fetch** - Web content retrieval
- **Time** - Timezone operations

### Self-Hosted Infrastructure (5 Minutes)
- **Gitea** - Self-hosted Git (替代 GitHub)
- **Matomo** - Privacy-first analytics (替代 Google Analytics)
- **n8n** - Workflow automation (替代 Zapier)
- **Prometheus** - Monitoring (替代 Datadog)
- **Grafana** - Dashboards (替代 Grafana Cloud)

---

## 💰 Cost Savings

| Category | Savings |
|----------|---------|
| **MCP Servers** | **$0/year** (vs $500+ for paid tools) |
| **Self-Hosted Tools** | **$2,000+/year** (vs SaaS alternatives) |
| **Total Annual Savings** | **$2,500+/year** |

---

## 🚀 Next Steps

### Pick Your Path:
1. **[Web Development](guides/use-cases/web-development.md)** - Build modern apps
2. **[Data Science](guides/use-cases/data-science.md)** - Analyze data
3. **[AI Development](guides/use-cases/ai-development.md)** - Build AI agents
4. **[Testing](guides/use-cases/testing.md)** - Automate QA
5. **[Content Creation](guides/use-cases/content.md)** - Write docs/blogs

### Advanced Topics:
- **[Security Best Practices](docs/security.md)**
- **[Backup & Recovery](docs/backup.md)**
- **[Performance Tuning](docs/performance.md)**
- **[Custom MCP Servers](docs/custom-servers.md)**

---

## 🤝 Need Help?

- **[Discussions](https://github.com/HassanAliMAli/Awesome-MCP-Servers/discussions)** - Ask questions
- **[Issues](https://github.com/HassanAliMAli/Awesome-MCP-Servers/issues)** - Report problems
- **[Contributing](CONTRIBUTING.md)** - Add new servers

---

## ⭐ Star This Repo

If this saves you time and money, **give us a star!** It helps others discover these tools.

[![GitHub stars](https://img.shields.io/github/stars/HassanAliMAli/Awesome-MCP-Servers?style=social)](https://github.com/HassanAliMAli/Awesome-MCP-Servers)

---

**You're all set!** Enjoy your new supercharged AI development environment! 🚀