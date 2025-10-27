# Prometheus Self-Hosted Monitoring

## 🎯 What You'll Accomplish

Deploy infrastructure monitoring with:
- ✅ Real-time metrics collection
- ✅ Powerful querying with PromQL
- ✅ Alerting and notifications
- ✅ Container and service monitoring

---

## 💰 Cost Savings

| Alternative | Monthly Cost | Annual Cost |
|-------------|--------------|-------------|
| **Prometheus (Self-Hosted)** | **$0** | **$0** |
| Datadog | $15+ | $180+ |
| New Relic | $20+ | $240+ |
| AppDynamics | $50+ | $600+ |

**Savings: $180+/year for unlimited metrics**

---

## 🚀 Quick Setup

### 1. Add to Docker Compose

```yaml
version: "3.8"

services:
  prometheus:
    image: prom/prometheus:latest
    container_name: prometheus
    command:
      - '--config.file=/etc/prometheus/prometheus.yml'
      - '--storage.tsdb.path=/prometheus'
      - '--web.console.libraries=/etc/prometheus/console_libraries'
      - '--web.console.templates=/etc/prometheus/consoles'
      - '--storage.tsdb.retention.time=200h'
      - '--web.enable-lifecycle'
    ports:
      - "9090:9090"
    volumes:
      - ./prometheus/config/prometheus.yml:/etc/prometheus/prometheus.yml
      - ./prometheus/data:/prometheus
    restart: unless-stopped
```

### 2. Create Configuration

Create `prometheus/config/prometheus.yml`:
```yaml
global:
  scrape_interval: 15s
  evaluation_interval: 15s

rule_files:
  # - "first_rules.yml"
  # - "second_rules.yml"

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'node-exporter'
    static_configs:
      - targets: ['node-exporter:9100']

  - job_name: 'cadvisor'
    static_configs:
      - targets: ['cadvisor:8080']
```

### 3. Start Service

```bash
docker-compose up -d prometheus
```

### 4. Access Web Interface

Open http://localhost:9090 and explore metrics.

---

## ⚙️ Configuration

### Environment Variables

Add to your `.env` file:
```bash
# Prometheus Configuration
PROMETHEUS_RETENTION_TIME=200h
PROMETHEUS_STORAGE_PATH=/prometheus
```

### Advanced Configuration

Create `prometheus/config/prometheus.yml` with alerting:
```yaml
global:
  scrape_interval: 15s
  evaluation_interval: 15s

rule_files:
  - "alerts.yml"

alerting:
  alertmanagers:
    - static_configs:
        - targets:
            - alertmanager:9093

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'docker-containers'
    docker_sd_configs:
      - host: unix:///var/run/docker.sock
    relabel_configs:
      - source_labels: [__meta_docker_container_name]
        regex: '/(.*)'
        target_label: container_name
```

---

## 🛠️ Integration with MCP

### Monitor MCP Server Performance

Add MCP server metrics:
```yaml
scrape_configs:
  - job_name: 'mcp-servers'
    static_configs:
      - targets: ['filesystem-server:8080', 'memory-server:8080']
    metrics_path: '/metrics'
```

### Query Examples

Monitor MCP server health:
```promql
# MCP server response time
rate(http_request_duration_seconds_sum[5m]) / rate(http_request_duration_seconds_count[5m])

# MCP server error rate
rate(http_requests_total{status=~"5.."}[5m])

# Memory usage by MCP servers
container_memory_usage_bytes{container_label_com_docker_compose_service=~"mcp-.*"}
```

---

## 🔧 Advanced Features

### 1. Custom Metrics

Export custom metrics from MCP servers:
```python
# Python example for MCP server metrics
from prometheus_client import Counter, Histogram, start_http_server

# Define metrics
requests_total = Counter('mcp_requests_total', 'Total requests', ['method', 'endpoint'])
request_duration = Histogram('mcp_request_duration_seconds', 'Request duration')

# Use in your MCP server
@request_duration.time()
def handle_request(method, endpoint):
    requests_total.labels(method=method, endpoint=endpoint).inc()
    # Handle request logic
```

### 2. Alerting Rules

Create `prometheus/config/alerts.yml`:
```yaml
groups:
  - name: mcp-alerts
    rules:
      - alert: MCPServiceDown
        expr: up{job="mcp-servers"} == 0
        for: 5m
        labels:
          severity: critical
        annotations:
          summary: "MCP service is down"
          description: "{{ $labels.instance }} of job {{ $labels.job }} has been down for more than 5 minutes."

      - alert: MCPHighErrorRate
        expr: rate(http_requests_total{status=~"5.."}[5m]) > 0.05
        for: 2m
        labels:
          severity: warning
        annotations:
          summary: "High error rate in MCP service"
          description: "{{ $labels.instance }} has error rate > 5% for more than 2 minutes."
```

### 3. Recording Rules

Pre-compute expensive queries:
```yaml
groups:
  - name: mcp-recordings
    rules:
      - record: job:mcp_request_duration_seconds:mean5m
        expr: rate(mcp_request_duration_seconds_sum[5m]) / rate(mcp_request_duration_seconds_count[5m])

      - record: job:mcp_memory_usage:ratio
        expr: container_memory_usage_bytes{container_label_com_docker_compose_service=~"mcp-.*"} / container_spec_memory_limit_bytes{container_label_com_docker_compose_service=~"mcp-.*"}
```

---

## 💡 Best Practices

### 1. Performance
- Set appropriate retention periods
- Use recording rules for complex queries
- Monitor Prometheus resource usage
- Enable remote storage for long-term retention

### 2. Security
- Restrict network access
- Use authentication for web interface
- Regular security updates
- Backup configuration files

### 3. Scalability
- Use federation for large deployments
- Implement sharding for high cardinality
- Monitor scrape duration
- Optimize relabeling rules

---

## 🎯 Example Queries

### MCP Server Monitoring
```promql
# Response time by endpoint
rate(http_request_duration_seconds_sum[5m]) / rate(http_request_duration_seconds_count[5m])

# Request rate by method
rate(http_requests_total[5m])

# Error rate by service
rate(http_requests_total{status=~"5.."}[5m]) / rate(http_requests_total[5m])

# Memory usage by container
container_memory_usage_bytes{container_label_com_docker_compose_service=~"mcp-.*"}
```

### System Monitoring
```promql
# CPU usage
100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)

# Memory usage
(node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes) * 100

# Disk usage
(node_filesystem_avail_bytes{mountpoint="/"} / node_filesystem_size_bytes{mountpoint="/"}) * 100

# Network I/O
rate(node_network_receive_bytes_total[5m])
```

---

## 🐛 Troubleshooting

### "Target Not Found"
- Verify target addresses
- Check network connectivity
- Ensure services are running
- Review firewall settings

### "Scrape Failed"
- Check target health
- Verify metrics endpoint
- Review authentication
- Check scrape interval

### "High Memory Usage"
- Review retention settings
- Check for high cardinality metrics
- Optimize recording rules
- Consider remote storage

### "Query Timeout"
- Optimize complex queries
- Use recording rules
- Increase query timeout
- Check resource limits

---

## 📚 Related Resources

- **[Prometheus Documentation](https://prometheus.io/docs/)**
- **[PromQL Cheat Sheet](promql-cheat-sheet.md)**
- **[Alerting Guide](alerting.md)**
- **[Docker Monitoring](docker-monitoring.md)**

---

**Next:** Learn about [Grafana Dashboards](grafana.md) for visualization!
