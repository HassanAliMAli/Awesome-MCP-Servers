# Grafana Self-Hosted Dashboards

## 🎯 What You'll Accomplish

Deploy beautiful dashboards and visualizations with:
- ✅ Interactive data visualizations
- ✅ Custom dashboard creation
- ✅ Alerting and notifications
- ✅ Multi-data source support

---

## 💰 Cost Savings

| Alternative | Monthly Cost | Annual Cost |
|-------------|--------------|-------------|
| **Grafana (Self-Hosted)** | **$0** | **$0** |
| Grafana Cloud | $9+ | $108+ |
| Datadog Dashboards | Included in $15+ plan | $180+ |
| New Relic Dashboards | Included in $20+ plan | $240+ |

**Savings: $108+/year for unlimited dashboards**

---

## 🚀 Quick Setup

### 1. Add to Docker Compose

```yaml
version: "3.8"

services:
  grafana:
    image: grafana/grafana-enterprise
    container_name: grafana
    ports:
      - "3001:3000"
    volumes:
      - ./grafana/data:/var/lib/grafana
      - ./grafana/config:/etc/grafana
    environment:
      - GF_SECURITY_ADMIN_PASSWORD=admin_password_here
      - GF_USERS_ALLOW_SIGN_UP=false
      - GF_SERVER_DOMAIN=localhost
      - GF_SERVER_ROOT_URL=http://localhost:3001
    restart: unless-stopped
```

### 2. Start Service

```bash
docker-compose up -d grafana
```

### 3. Access Web Interface

Open http://localhost:3001 and log in with:
- **Username**: admin
- **Password**: admin_password_here (from .env)

---

## ⚙️ Configuration

### Environment Variables

Add to your `.env` file:
```bash
# Grafana Configuration
GF_SECURITY_ADMIN_PASSWORD=generate_secure_password_here
GF_USERS_ALLOW_SIGN_UP=false
GF_SERVER_DOMAIN=localhost
GF_SERVER_ROOT_URL=http://localhost:3001
```

### Custom Configuration

Create `grafana/config/grafana.ini`:
```ini
[server]
domain = localhost
root_url = http://localhost:3001

[security]
admin_password = admin_password_here
allow_embedding = true

[users]
allow_sign_up = false
auto_assign_org = true
auto_assign_org_role = Viewer

[auth.anonymous]
enabled = false

[dashboards]
versions_to_keep = 20
```

---

## 🛠️ Integration with MCP

### Visualize MCP Server Metrics

Connect Grafana to Prometheus:
1. Open Grafana at http://localhost:3001
2. Go to **Configuration** → **Data Sources**
3. Add **Prometheus** data source
4. Set URL to: `http://prometheus:9090`
5. Click **Save & Test**

### Example Dashboard Queries

Create panels for MCP server monitoring:

**Panel 1: Response Time**
```promql
rate(http_request_duration_seconds_sum[5m]) / rate(http_request_duration_seconds_count[5m])
```

**Panel 2: Request Rate**
```promql
rate(http_requests_total[5m])
```

**Panel 3: Error Rate**
```promql
rate(http_requests_total{status=~"5.."}[5m]) / rate(http_requests_total[5m])
```

**Panel 4: Memory Usage**
```promql
container_memory_usage_bytes{container_label_com_docker_compose_service=~"mcp-.*"}
```

---

## 🔧 Advanced Features

### 1. Custom Dashboards

Create JSON dashboard for MCP servers:
```json
{
  "dashboard": {
    "id": null,
    "title": "MCP Server Monitoring",
    "tags": ["mcp", "monitoring"],
    "timezone": "browser",
    "panels": [
      {
        "type": "graph",
        "title": "Response Time",
        "datasource": "Prometheus",
        "targets": [
          {
            "expr": "rate(http_request_duration_seconds_sum[5m]) / rate(http_request_duration_seconds_count[5m])",
            "legendFormat": "{{job}}"
          }
        ]
      }
    ]
  }
}
```

### 2. Alerting Rules

Set up alerts in Grafana:
```yaml
# In Grafana UI: Alerting → Contact Points
# Create contact point for Slack, Email, etc.

# Create alert rule:
# IF rate(http_requests_total{status=~"5.."}[5m]) > 0.05
# FOR 2m
# Labels: severity=warning
# Annotations: summary="High error rate in MCP service"
```

### 3. Variables and Templating

Create dynamic dashboards:
```json
{
  "templating": {
    "list": [
      {
        "name": "mcp_service",
        "type": "query",
        "datasource": "Prometheus",
        "refresh": 1,
        "query": "label_values(up{job=~\"mcp-.*\"}, job)"
      }
    ]
  }
}
```

---

## 💡 Best Practices

### 1. Dashboard Design
- Use consistent color schemes
- Organize panels logically
- Include clear titles and descriptions
- Add annotations for events

### 2. Performance
- Limit time ranges
- Use efficient queries
- Enable caching
- Monitor dashboard load times

### 3. Security
- Use strong admin passwords
- Disable anonymous access
- Regular security updates
- Backup dashboards regularly

---

## 🎯 Example Dashboards

### MCP Server Overview
```
"Create dashboard showing all MCP server metrics"
"Include panels for response time, error rate, and resource usage"
"Add alerting for service downtime"
```

### System Performance
```
"Build dashboard for Docker container monitoring"
"Show CPU, memory, and network usage by container"
"Include disk I/O and storage metrics"
```

### Business Metrics
```
"Create dashboard for application performance"
"Show user activity and feature usage"
"Include conversion rates and business KPIs"
```

---

## 🐛 Troubleshooting

### "Data Source Connection Failed"
- Verify Prometheus is running
- Check network connectivity
- Ensure correct URL and port
- Review authentication settings

### "No Data in Panels"
- Check query syntax
- Verify metric names
- Confirm time range
- Review data source configuration

### "Dashboard Loading Slow"
- Optimize queries
- Reduce time range
- Enable caching
- Check system resources

### "Alerts Not Firing"
- Verify alert conditions
- Check evaluation intervals
- Review notification channels
- Test alert rules manually

---

## 📚 Related Resources

- **[Grafana Documentation](https://grafana.com/docs/)**
- **[Dashboard Examples](https://grafana.com/grafana/dashboards/)**
- **[Prometheus Integration](prometheus.md)**
- **[Alerting Guide](alerting.md)**

---

**That's all self-hosted infrastructure guides complete!** ✅

**Next:** Check out the [Quick Start Guide](../QUICKSTART.md) to get everything running in 5 minutes!
