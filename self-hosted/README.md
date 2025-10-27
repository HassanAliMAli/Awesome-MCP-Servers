# Self-Hosted Infrastructure

Deploy privacy-first, open-source alternatives to expensive SaaS tools.

## 🎯 What You'll Accomplish

In this guide, you'll learn to:
- ✅ Deploy self-hosted development tools
- ✅ Set up monitoring and analytics
- ✅ Automate workflows with n8n
- ✅ Secure your infrastructure

---

## 🚀 Quick Deployment

### One-Click Setup

```bash
# Clone the repository
git clone https://github.com/HassanAliMAli/Awesome-MCP-Servers.git
cd Awesome-MCP-Servers/self-hosted

# Start all services
docker-compose up -d
```

That's it! All services will be available at:
- **Gitea**: http://localhost:3000
- **Matomo**: http://localhost:8080
- **n8n**: http://localhost:5678
- **Prometheus**: http://localhost:9090
- **Grafana**: http://localhost:3001

---

## 📦 Included Tools

| Tool | Purpose | Free Alternative To |
|------|---------|---------------------|
| **[Gitea](gitea.md)** | Self-hosted Git | GitHub Enterprise |
| **[Matomo](matomo.md)** | Web analytics | Google Analytics |
| **[n8n](n8n.md)** | Workflow automation | Zapier, Make |
| **[Prometheus](prometheus.md)** | Monitoring | Datadog |
| **[Grafana](grafana.md)** | Dashboard & visualization | Grafana Cloud |

---

## ⚙️ System Requirements

### Minimum
- **RAM**: 4GB
- **CPU**: 2 cores
- **Storage**: 20GB free space
- **Docker**: v20+
- **Docker Compose**: v2+

### Recommended
- **RAM**: 8GB+
- **CPU**: 4 cores
- **Storage**: 50GB+ SSD
- **Domain**: Custom domain (optional)

---

## 🛠️ Deployment Options

### Local Development
Perfect for personal use and testing:
```bash
docker-compose up -d
```

### Production Server
For team use and production workloads:
```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```

### Cloud Deployment
Deploy to any cloud provider:
- **AWS**: Use EC2 instance
- **DigitalOcean**: Use Droplet
- **Linode**: Use Linode instance
- **Vultr**: Use Cloud Compute

---

## 🔧 Configuration

### Environment Variables

Create `.env` file:
```bash
# Database
POSTGRES_USER=awesome_mcp
POSTGRES_PASSWORD=secure_password_here
POSTGRES_DB=awesome_mcp

# Gitea
GITEA_APP_NAME=Awesome MCP Git
GITEA_DOMAIN=localhost
GITEA_SSH_PORT=22

# Matomo
MATOMO_DOMAIN=localhost:8080
```

### Custom Domains

Update `docker-compose.yml`:
```yaml
services:
  gitea:
    environment:
      - GITEA_DOMAIN=git.yourdomain.com
```

---

## 📖 Tool Guides

### [Gitea Setup →](gitea.md)
Self-hosted Git service with full GitHub compatibility.

### [Matomo Setup →](matomo.md)
Privacy-first web analytics platform.

### [n8n Setup →](n8n.md)
Workflow automation and integration platform.

### [Prometheus Setup →](prometheus.md)
Monitoring and alerting toolkit.

### [Grafana Setup →](grafana.md)
Analytics and monitoring dashboard.

---

## 🔒 Security

### HTTPS Setup
```bash
# Use Let's Encrypt with Traefik
docker-compose -f docker-compose.yml -f docker-compose.https.yml up -d
```

### User Management
- Create admin accounts first
- Set strong passwords
- Enable 2FA where available
- Regular security updates

### Backups
```bash
# Backup all data
docker-compose exec postgres pg_dump -U awesome_mcp awesome_mcp > backup.sql
```

---

## 🎯 Quick Start Checklist

- [ ] Install Docker and Docker Compose
- [ ] Clone this repository
- [ ] Configure `.env` file
- [ ] Run `docker-compose up -d`
- [ ] Access services via browser
- [ ] Configure admin accounts
- [ ] Set up backups

---

## 🤝 Need Help?

- **[Discussions](https://github.com/HassanAliMAli/Awesome-MCP-Servers/discussions)** - Ask questions
- **[Issues](https://github.com/HassanAliMAli/Awesome-MCP-Servers/issues)** - Report problems
- **[Contributing](../CONTRIBUTING.md)** - Improve infrastructure
