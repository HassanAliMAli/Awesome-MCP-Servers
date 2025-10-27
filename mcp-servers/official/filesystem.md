# Filesystem MCP Server

## 📁 What It Does

**Gives AI agents secure access to your local files and directories.**

The Filesystem server lets your AI assistant read, write, create, delete, and search files on your computer - all with configurable security boundaries.

---

## 🌟 Why It's The Best

### vs Manual File Operations
- ✅ **10x faster** - AI reads/writes files instantly
- ✅ **No copy-paste** - Works directly with your files
- ✅ **Context aware** - AI sees full file structure

### vs Other File Tools
- ✅ **Official** - Maintained by MCP creators
- ✅ **Security-first** - You control allowed directories
- ✅ **Zero config** - Just specify paths

### Key Advantages
- **Cross-platform** - Works on Windows, Mac, Linux
- **No limits** - Unlimited files and operations
- **Fast** - Direct file access, no API delays

---

##💰 Cost Comparison

| Alternative | Cost | Limitations |
|-------------|------|-------------|
| **Filesystem MCP** | **FREE** | ♾️ Unlimited |
| Manual copy-paste | Time = Money | Slow, error-prone |
| Cloud file APIs | $$ per request | Rate limits |

**Savings: Infinite** - No alternative needed!

---

## ✨ Features

### File Operations
- ✅ **Read files** - Get file content
- ✅ **Write files** - Create or update
- ✅ **Delete files** - Remove files
- ✅ **Move/rename** - Organize files

### Directory Operations  
- ✅ **Create directories** - Make folder structures
- ✅ **List directories** - See what's inside
- ✅ **Delete directories** - Remove folders
- ✅ **Move directories** - Reorganize

### Advanced Features
- ✅ **Search files** - Find files by pattern
- ✅ **File metadata** - Get size, dates, permissions
- ✅ **Dynamic access** - Grant access to new paths

---

## 🚀 Installation

### Prerequisites
```bash
node --version  # v18 or higher
```

### Config (All Platforms)

The server is installed automatically via `npx`. Just add to your MCP config:

**Key Point:** Replace paths with directories you want AI to access!

---

## ⚙️ Configuration

### Cursor / Windsurf
File: `.cursor/mcp.json` or `.windsurf/mcp.json`

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "C:\\Users\\YourName\\Projects",
        "C:\\Users\\YourName\\Documents"
      ]
    }
  }
}
```

### Claude Desktop
**macOS:** `~/Library/Application Support/Claude/claude_desktop_config.json`  
**Windows:** `%APPDATA%\\Claude\\claude_desktop_config.json`

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/yourname/Desktop",
        "/Users/yourname/Projects"
      ]
    }
  }
}
```

### VS Code
File: `.vscode/mcp.json`

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "${workspaceFolder}"
      ]
    }
  }
}
```

---

## 🔒 Security

### ✅ Safe by Design

The Filesystem server ONLY accesses directories you explicitly allow.

**You specify allowed paths:**
```json
"args": [
  "-y",
  "@modelcontextprotocol/server-filesystem",
  "/path/to/allowed/dir1",
  "/path/to/allowed/dir2"
]
```

**AI cannot access:**
- ❌ System directories
- ❌ Other users' files  
- ❌ Anything outside allowed paths

### Best Practices
1. **Only allow project directories** - Not your whole disk!
2. **One directory per project** - Use project-level configs
3. **Review AI operations** - Check what files are being modified

---

## 💡 Use Cases

### 1. **Code Review**
```
"Review all .js files in src/ and suggest improvements"
```
AI reads your codebase and provides feedback.

### 2. **Bulk Refactoring**
```
"Update all import statements to use new module path"
```
AI finds and updates files automatically.

### 3. **Documentation Generation**
```
"Create README.md files for each directory based on code"
```
AI analyzes code and writes docs.

### 4. **File Organization**
```
"Organize these files by date into year/month folders"
```
AI creates structure and moves files.

### 5. **Search & Replace**
```
"Find all TODOs in the codebase and create a summary"
```
AI searches files and compiles results.

---

## 📊 Performance

| Operation | Speed | Limit |
|-----------|-------|-------|
| Read file | <10ms | None |
| Write file | <20ms | None |
| List directory | <50ms | None |
| Search files | <100ms | None |

**No rate limits. No quotas. Just fast local file access.**

---

## 🐛 Troubleshooting

### AI Can't Access Files

**Check:**
1. ✅ Path is correct and exists
2. ✅ Path is in allowed list
3. ✅ You have read/write permissions
4. ✅ Path format is correct for your OS

**Windows paths:**
```json
"C:\\Users\\Name\\Projects"  // Escaped backslashes
// OR
"C:/Users/Name/Projects"     // Forward slashes work too
```

**Mac/Linux paths:**
```json
"/Users/name/Projects"
"/home/name/projects"
```

### Permission Denied

**Windows:** Right-click directory → Properties → Security  
**Mac:** System Preferences → Security & Privacy → Files and Folders  
**Linux:** Check file ownership and permissions

---

## 📚 Official Documentation

- **NPM Package:** [@modelcontextprotocol/server-filesystem](https://www.npmjs.com/package/@modelcontextprotocol/server-filesystem)
- **GitHub:** [modelcontextprotocol/servers/filesystem](https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem)
- **MCP Docs:** [modelcontextprotocol.io](https://modelcontextprotocol.io/docs/develop/connect-local-servers)

---

## 🎯 Quick Start Checklist

- [ ] Node.js v18+ installed
- [ ] Identified which directories to allow
- [ ] Added config to MCP client
- [ ] Restarted MCP client
- [ ] Tested with simple command: "List files in my project directory"

---

**Next:** Check out [Memory Server](memory.md) to make AI remember across sessions!
