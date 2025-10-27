# PostgreSQL MCP Server

## 🗄️ What It Does

**Gives AI the ability to query PostgreSQL databases using natural language.**

The PostgreSQL server enables AI to execute SQL queries, analyze data, generate reports, and provide insights from your database - all through conversational interfaces.

---

## 🌟 Why It's The Best

### vs Manual SQL
- ✅ **Natural language** - No SQL syntax needed
- ✅ **Smart query generation** - AI writes complex queries
- ✅ **Data insights** - AI explains results

### vs Database GUI Tools
- ✅ **Programmatic access** - Automate queries
- ✅ **Natural conversation** - Ask questions, get answers
- ✅ **Schema understanding** - AI learns your database

### Key Advantages
- **Read-only operations** - Safe for production
- **Schema discovery** - Auto-detects tables/columns
- **Result formatting** - Clean, readable output
- **Error handling** - Graceful failures

---

## 💰 Cost Comparison

| Alternative | Cost |
|-------------|------|
| **PostgreSQL MCP** | **FREE** |
| Retool | $25/month |
| Metabase | $50/month |
| Tableau | $70/month |

**Savings: $840+/year for database access**

---

## ✨ Features

### Database Operations
- ✅ **Execute queries** - Run SELECT statements
- ✅ **Schema discovery** - List tables/columns
- ✅ **Data exploration** - Sample data
- ✅ **Query optimization** - AI improves performance

### Analysis Capabilities
- ✅ **Data summarization** - Key metrics
- ✅ **Trend analysis** - Time series insights
- ✅ **Data validation** - Check for anomalies
- ✅ **Report generation** - Structured summaries

### Security Features
- ✅ **Read-only** - No data modification
- ✅ **Connection encryption** - Secure communication
- ✅ **Parameterized queries** - SQL injection protection
- ✅ **Access control** - Database-level permissions

---

## 🚀 Setup & Installation

### Prerequisites
```bash
# PostgreSQL database (local or remote)
# Connection string format:
postgresql://username:password@host:port/database
```

### Install Server
```bash
# Auto-installed via npx - just add to config!
```

---

## ⚙️ Configuration

### Basic Configuration

```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-postgres",
        "postgresql://username:password@localhost:5432/mydb"
      ]
    }
  }
}
```

### With Environment Variables (Recommended)

```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-postgres",
        "${POSTGRES_CONNECTION_STRING}"
      ]
    }
  }
}
```

Then set environment variable:
```bash
# Windows (PowerShell)
$env:POSTGRES_CONNECTION_STRING="postgresql://username:password@localhost:5432/mydb"

# Mac/Linux
export POSTGRES_CONNECTION_STRING="postgresql://username:password@localhost:5432/mydb"
```

---

## 💡 Use Cases

### 1. **Data Analysis**
```
"Show me the top 10 customers by revenue this month"
```
AI generates and executes query, explains results.

### 2. **Schema Exploration**
```
"What tables are in this database and what do they contain?"
```
AI discovers schema and provides overview.

### 3. **Report Generation**
```
"Create a weekly sales report with trends and insights"
```
AI queries data and generates structured report.

### 4. **Data Validation**
```
"Check for any duplicate user records in the users table"
```
AI finds and reports data quality issues.

### 5. **Performance Monitoring**
```
"Show me the slowest queries from the past week"
```
AI analyzes query performance data.

---

## 🔒 Security

### ✅ Secure by Design

- **Read-only access** - Cannot modify data
- **Parameterized queries** - Prevents SQL injection
- **Encrypted connections** - SSL/TLS support
- **Database permissions** - Use least-privilege accounts

### Best Practices
1. **Use dedicated user** - Create read-only database user
2. **Environment variables** - Store connection strings securely
3. **Network restrictions** - Limit database access
4. **Regular auditing** - Monitor query logs

---

## 📊 Performance

| Operation | Speed |
|-----------|-------|
| Simple query | <100ms |
| Complex join | <500ms |
| Large dataset | <2s |
| Schema discovery | <1s |

---

## 🐛 Troubleshooting

### "Connection Failed"

**Fix:**
1. Verify connection string format
2. Check database is running
3. Verify credentials are correct
4. Check network/firewall settings

### "Permission Denied"

**Fix:**
1. Ensure user has SELECT permissions
2. Check database-level restrictions
3. Verify schema access

### "Query Timeout"

**Fix:**
1. Optimize the query
2. Add appropriate indexes
3. Break complex queries into steps
4. Increase timeout settings

---

## 📚 Official Documentation

- **NPM:** [@modelcontextprotocol/server-postgres](https://www.npmjs.com/package/@modelcontextprotocol/server-postgres)
- **PostgreSQL:** [postgresql.org](https://www.postgresql.org/)

---

## 🎯 Quick Start

1. Prepare PostgreSQL connection string
2. Add to config (see above)
3. Restart AI assistant
4. Try: *"Show me the first 5 rows from the users table"*

---

**Next:** Explore [GitLab Server](gitlab.md) for GitLab integration!
