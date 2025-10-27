# n8n Self-Hosted Automation

## 🎯 What You'll Accomplish

Deploy workflow automation platform with:
- ✅ Visual workflow designer
- ✅ 300+ app integrations
- ✅ Self-hosted for privacy
- ✅ Enterprise automation capabilities

---

## 💰 Cost Savings

| Alternative | Monthly Cost | Annual Cost |
|-------------|--------------|-------------|
| **n8n (Self-Hosted)** | **$0** | **$0** |
| Zapier Professional | $39.99 | $480 |
| Make (Integromat) | $29.90 | $359 |
| Tray.io | $99+ | $1,188+ |
| Microsoft Power Automate | $15+ | $180+ |

**Savings: $480+/year for unlimited automations**

---

## 🚀 Quick Setup

### 1. Add to Docker Compose

```yaml
version: "3.8"

services:
  n8n:
    image: n8nio/n8n:latest
    container_name: n8n
    environment:
      - N8N_PORT=5678
      - N8N_PROTOCOL=http
      - N8N_HOST=localhost
      - N8N_ENCRYPTION_KEY=your_encryption_key_here
      - GENERIC_TIMEZONE=America/New_York
      - TZ=America/New_York
    ports:
      - "5678:5678"
    volumes:
      - ./n8n:/home/node/.n8n
    restart: unless-stopped
```

### 2. Start Service

```bash
docker-compose up -d n8n
```

### 3. Access Web Interface

Open http://localhost:5678 and create your first workflow.

---

## ⚙️ Configuration

### Environment Variables

Add to your `.env` file:
```bash
# n8n Configuration
N8N_PORT=5678
N8N_PROTOCOL=http
N8N_HOST=localhost
N8N_ENCRYPTION_KEY=generate_secure_key_here
GENERIC_TIMEZONE=America/New_York
TZ=America/New_York
```

### Generate Encryption Key

```bash
# Generate secure encryption key
openssl rand -hex 32
```

### Custom Configuration

Create `n8n/config.json`:
```json
{
  "nodes": {
    "errorTrigger": {
      "enabled": true
    }
  },
  "versionNotifications": {
    "enabled": true,
    "endpoint": "https://api.n8n.io/versions/n8n",
    "infoUrl": "https://github.com/n8n-io/n8n/releases"
  }
}
```

---

## 🛠️ Integration with MCP

### Automated MCP Server Management

Create workflows to manage your MCP servers:

```json
{
  "nodes": [
    {
      "parameters": {},
      "name": "Start",
      "type": "n8n-nodes-base.manualTrigger",
      "typeVersion": 1,
      "position": [250, 300]
    },
    {
      "parameters": {
        "operation": "execute",
        "command": "docker-compose restart mcp-servers"
      },
      "name": "Restart MCP Servers",
      "type": "n8n-nodes-base.ssh",
      "typeVersion": 1,
      "position": [500, 300]
    }
  ],
  "connections": {
    "Start": {
      "main": [
        [
          {
            "node": "Restart MCP Servers",
            "type": "main",
            "index": 0
          }
        ]
      ]
    }
  }
}
```

---

## 🔧 Advanced Features

### 1. Custom Nodes

Create custom nodes for MCP servers:
```javascript
// Custom MCP node
module.exports = {
  description: 'Execute MCP server commands',
  defaults: {
    name: 'MCP Server',
    color: '#44AA44',
  },
  inputs: ['main'],
  outputs: ['main'],
  properties: [
    {
      displayName: 'Server Name',
      name: 'serverName',
      type: 'string',
      default: '',
      description: 'Name of the MCP server to execute',
    },
    {
      displayName: 'Command',
      name: 'command',
      type: 'string',
      default: '',
      description: 'Command to execute',
    },
  ],
};
```

### 2. Webhook Triggers

Set up webhook triggers for MCP events:
```json
{
  "nodes": [
    {
      "parameters": {
        "path": "mcp-trigger",
        "responseMode": "lastNode",
        "responseData": "firstEntryJson"
      },
      "name": "Webhook",
      "type": "n8n-nodes-base.webhook",
      "typeVersion": 1,
      "position": [250, 300]
    }
  ]
}
```

### 3. Scheduled Workflows

Automate MCP server maintenance:
```json
{
  "nodes": [
    {
      "parameters": {
        "rule": {
          "interval": [{}]
        }
      },
      "name": "Cron",
      "type": "n8n-nodes-base.cron",
      "typeVersion": 1,
      "position": [250, 300]
    },
    {
      "parameters": {
        "operation": "execute",
        "command": "npx @modelcontextprotocol/server-memory --cleanup"
      },
      "name": "Cleanup Memory",
      "type": "n8n-nodes-base.ssh",
      "typeVersion": 1,
      "position": [500, 300]
    }
  ]
}
```

---

## 💡 Best Practices

### 1. Security
- Use strong encryption keys
- Enable authentication
- Restrict webhook access
- Regular security updates

### 2. Performance
- Monitor workflow execution
- Optimize node configurations
- Use caching where appropriate
- Scale horizontally for high loads

### 3. Reliability
- Implement error handling
- Set up monitoring alerts
- Regular backup workflows
- Test workflows thoroughly

---

## 🎯 Example Workflows

### MCP Server Management
```
"Create a workflow to restart all MCP servers daily"
"Set up monitoring for MCP server health"
"Automate backup of MCP server data"
```

### Data Processing
```
"Process incoming webhooks from MCP servers"
"Transform MCP server output for reporting"
"Send notifications for MCP server events"
```

### Integration
```
"Connect MCP servers with Slack notifications"
"Integrate MCP servers with email alerts"
"Automate MCP server deployment with webhooks"
```

---

## 🐛 Troubleshooting

### "Workflow Execution Failed"
- Check node configurations
- Verify credentials
- Review error logs
- Test individual nodes

### "Webhook Not Triggering"
- Verify webhook URL
- Check firewall settings
- Test with curl command
- Review authentication settings

### "Performance Issues"
- Monitor system resources
- Optimize workflow design
- Check database connections
- Enable caching

### "Authentication Errors"
- Verify API keys
- Check token expiration
- Review permission scopes
- Test credentials manually

---

## 📚 Related Resources

- **[n8n Documentation](https://docs.n8n.io/)**
- **[Workflow Automation Guide](workflows.md)**
- **[Docker Compose Guide](docker-compose.md)**
- **[Security Best Practices](security.md)**

---

**Next:** Learn about [Prometheus Monitoring](prometheus.md) for infrastructure observability!
