# Memory MCP Server

## 🧠 What It Does

**Gives AI persistent memory across conversations using a local knowledge graph.**

The Memory server stores information about you, your preferences, and context - so AI remembers everything between sessions. No more repeating yourself!

---

## 🌟 Why It's The Best

### vs No Memory
- ✅ **AI remembers you** - No repetition
- ✅ **Context persists** - Picks up where you left off
- ✅ **Learns preferences** - Adapts to your style

### vs Cloud Memory Solutions
- ✅ **100% Private** - Stored locally on your machine
- ✅ **No costs** - Unlimited free storage
- ✅ **You own your data** - Complete control

### Key Advantages
- **Knowledge graph** - Understands relationships between facts
- **Semantic search** - Finds relevant memories intelligently
- **Local-first** - Your data never leaves your computer

---

## 💰 Cost Comparison

| Alternative | Cost | Privacy |
|-------------|------|---------|
| **Memory MCP** | **FREE** | ✅ 100% Local |
| ChatGPT Plus Memory | $20/month | ❌ Cloud |
| Custom memory systems | $$$+ | Varies |

**Savings: $240/year + your privacy!**

---

## ✨ Features

### Knowledge Graph
- ✅ **Store entities** - People, places, things
- ✅ **Create relations** - Connect information
- ✅ **Add observations** - Notes and context

### Memory Operations
- ✅ **Create memories** - Add new information
- ✅ **Search memories** - Find relevant context
- ✅ **Open graph** - View all stored data
- ✅ **Delete memories** - Remove outdated info

### Smart Features
- ✅ **Semantic search** - Finds related memories
- ✅ **Relationship tracking** - Understands connections
- ✅ **Auto-organization** - Structures data intelligently

---

## 🚀 Installation

### Prerequisites
```bash
node --version  # v18 or higher
```

### Auto-installed
The server installs automatically via `npx` - just add to config!

---

## ⚙️ Configuration

### Cursor / Windsurf
```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    }
  }
}
```

### Claude Desktop
```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    }
  }
}
```

### Custom Memory Location (Optional)
```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"],
      "env": {
        "MEMORY_FILE_PATH": "C:\\Users\\YourName\\.mcp\\memory.jsonl"
      }
    }
  }
}
```

---

## 💡 Use Cases

### 1. **Remember Project Context**
```
"Remember that this project uses TypeScript and React"
```
AI stores tech stack and references it later.

### 2. **Personal Preferences**
```
"I prefer function components over class components"
```
AI adapts code suggestions to your style.

### 3. **Team Information**
```
"Sarah handles backend, Mike does frontend"
```
AI remembers team structure.

### 4. **Domain Knowledge**
```
"In our system, 'Order' refers to customer purchases, not sorting"
```
AI understands your terminology.

### 5. **Long-term Projects**
```
"This refactoring started in Q2, aiming to finish by Q4"
```
AI tracks project timeline.

---

## 📊 How It Works

```
┌─────────────────┐
│  You tell AI    │
│  something      │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  Memory Server  │
│  stores in      │
│  Knowledge Graph│
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  AI retrieves   │
│  relevant info  │
│  automatically  │
└─────────────────┘
```

**Stored locally in:** `~/.mcp/memory/memory.jsonl` (or custom path)

---

## 🔒 Privacy & Security

### ✅ Your Data, Your Control

- **Stored locally** - Never sent to cloud
- **Plain text** - You can read/edit the file
- **No tracking** - No analytics or telemetry
- **Portable** - Backup and move easily

### Best Practices
1. **Backup regularly** - Copy memory.jsonl file
2. **Review periodically** - Remove outdated info
3. **Be selective** - Only store useful context

---

## 🐛 Troubleshooting

### Memory Not Persisting

**Check:**
1. ✅ Server is running (restart your client)
2. ✅ Memory file has write permissions
3. ✅ Disk space available

### View Stored Memories
```
Ask AI: "Show me everything you remember about me"
```

### Clear All Memory
Delete the file: `~/.mcp/memory/memory.jsonl`

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-memory](https://www.npmjs.com/package/@modelcontextprotocol/server-memory)
- **GitHub:** [modelcontextprotocol/servers/memory](https://github.com/modelcontextprotocol/servers/tree/main/src/memory)

---

## 🎯 Quick Start

1. Add server to config
2. Restart your AI assistant
3. Tell it something: *"Remember that I prefer tabs over spaces"*
4. Later: *"Format this code"* → AI uses tabs!

---

**Next:** Check out [Sequential Thinking](sequential-thinking.md) for advanced AI reasoning!
