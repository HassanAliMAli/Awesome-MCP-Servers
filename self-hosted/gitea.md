# Gitea Self-Hosted Git

## 🎯 What You'll Accomplish

Deploy your own GitHub-compatible Git service with:
- ✅ Full Git repository management
- ✅ Web interface for code browsing
- ✅ Issue tracking and pull requests
- ✅ CI/CD integration

---

## 💰 Cost Savings

| Alternative | Monthly Cost | Annual Cost |
|-------------|--------------|-------------|
| **Gitea (Self-Hosted)** | **$0** | **$0** |
| GitHub Enterprise | $21/user | $252/user |
| GitLab Premium | $19/user | $228/user |
| Bitbucket | $3/user | $36/user |

**Savings: $252+/year per user**

---

## 🚀 Quick Setup

### 1. Add to Docker Compose

```yaml
version: "3.8"

services:
  gitea:
    image: gitea/gitea:1.22
    container_name: gitea
    environment:
      - USER_UID=1000
      - USER_GID=1000
      - GITEA__database__DB_TYPE=postgres
      - GITEA__database__HOST=postgres:5432
      - GITEA__database__NAME=gitea
      - GITEA__database__USER=gitea
      - GITEA__database__PASSWD=gitea_password
    volumes:
      - ./gitea:/data
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    ports:
      - "3000:3000"
      - "2222:22"
    depends_on:
      - postgres
    restart: unless-stopped
```

### 2. Start Service

```bash
docker-compose up -d gitea
```

### 3. Access Web Interface

Open http://localhost:3000 and complete initial setup.

---

## ⚙️ Configuration

### Environment Variables

Add to your `.env` file:
```bash
# Gitea Configuration
GITEA_APP_NAME=Awesome MCP Git
GITEA_DOMAIN=localhost
GITEA_SSH_PORT=2222
GITEA_HTTP_PORT=3000
GITEA_DB_TYPE=postgres
GITEA_DB_HOST=postgres:5432
GITEA_DB_NAME=gitea
GITEA_DB_USER=gitea
GITEA_DB_PASSWD=gitea_password
```

### Custom Configuration

Create `gitea/custom/conf/app.ini`:
```ini
[server]
DOMAIN = git.yourdomain.com
ROOT_URL = https://git.yourdomain.com/
SSH_PORT = 22

[service]
REGISTER_EMAIL_CONFIRM = true
ENABLE_NOTIFY_MAIL = true
ALLOW_ONLY_EXTERNAL_REGISTRATION = false
ENABLE_CAPTCHA = true
```

---

## 🛠️ Integration with MCP

### GitHub MCP Server

Configure to work with your self-hosted Gitea:

```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "YOUR_GITEA_TOKEN"
      }
    }
  }
}
```

**Note:** Use Gitea personal access token instead of GitHub token.

---

## 🔧 Advanced Features

### 1. CI/CD Integration

Enable Drone CI:
```yaml
services:
  drone-server:
    image: drone/drone:2
    environment:
      - DRONE_GITEA_SERVER=http://gitea:3000
      - DRONE_GIT_ALWAYS_AUTH=false
    ports:
      - "8000:80"
```

### 2. Backup Strategy

```bash
# Backup repositories
docker-compose exec gitea tar -czf /data/gitea-repos-backup.tar.gz /data/git

# Backup database
docker-compose exec postgres pg_dump -U gitea gitea > gitea-db-backup.sql
```

### 3. SSL/HTTPS

With Traefik:
```yaml
labels:
  - "traefik.enable=true"
  - "traefik.http.routers.gitea.rule=Host(`git.yourdomain.com`)"
  - "traefik.http.routers.gitea.tls.certresolver=letsencrypt"
```

---

## 💡 Best Practices

### 1. Security
- Enable 2FA for all users
- Regular security updates
- Strong password policies
- IP whitelisting for admin access

### 2. Performance
- Use SSD storage
- Monitor resource usage
- Enable repository size limits
- Regular cleanup of old repositories

### 3. Backup
- Daily database backups
- Weekly repository backups
- Store backups offsite
- Test restore procedures

---

## 🎯 Example Workflows

### Repository Management
```
"Create a new repository for our MCP project"
"Set up branch protection rules for main branch"
"Configure webhooks for CI/CD integration"
```

### Issue Tracking
```
"Create issues for all MCP server documentation"
"Assign issues to team members"
"Set up issue templates for bug reports"
```

### Code Review
```
"Review pull requests for the filesystem server"
"Comment on code changes in pull requests"
"Merge approved pull requests"
```

---

## 🐛 Troubleshooting

### "Permission Denied"
- Check file permissions on volumes
- Verify USER_UID and USER_GID
- Ensure proper ownership of data directory

### "Database Connection Failed"
- Verify database credentials
- Check network connectivity between containers
- Ensure PostgreSQL service is running

### "SSH Clone Fails"
- Verify SSH port mapping
- Check firewall settings
- Ensure SSH keys are properly configured

### "Slow Performance"
- Monitor system resources
- Check disk I/O performance
- Optimize database queries
- Enable caching

---

## 📚 Related Resources

- **[Gitea Documentation](https://docs.gitea.com/)**
- **[GitHub MCP Server](../mcp-servers/third-party/github.md)**
- **[Git MCP Server](../mcp-servers/official/git.md)**
- **[Docker Compose Guide](docker-compose.md)**

---

**Next:** Learn about [Matomo Analytics](matomo.md) for privacy-first web analytics!
