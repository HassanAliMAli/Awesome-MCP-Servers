# Matomo Self-Hosted Analytics

## 🎯 What You'll Accomplish

Deploy privacy-first web analytics with:
- ✅ Complete website analytics
- ✅ Real-time visitor tracking
- ✅ Custom reports and dashboards
- ✅ GDPR/privacy compliance

---

## 💰 Cost Savings

| Alternative | Monthly Cost | Annual Cost |
|-------------|--------------|-------------|
| **Matomo (Self-Hosted)** | **$0** | **$0** |
| Google Analytics 4 | Free (data sold) | Priceless |
| Adobe Analytics | $150+ | $1,800+ |
| Mixpanel | $20+ | $240+ |

**Savings: $1,800+/year + your privacy**

---

## 🚀 Quick Setup

### 1. Add to Docker Compose

```yaml
version: "3.8"

services:
  matomo:
    image: matomo:5-fpm-alpine
    container_name: matomo
    environment:
      - MATOMO_DATABASE_HOST=postgres
      - MATOMO_DATABASE_TABLES_PREFIX=matomo_
      - MATOMO_DATABASE_USERNAME=matomo
      - MATOMO_DATABASE_PASSWORD=matomo_password
      - MATOMO_DATABASE_DBNAME=matomo
    volumes:
      - ./matomo/config:/var/www/html/config
      - ./matomo/logs:/var/www/html/logs
      - ./matomo/tmp:/var/www/html/tmp
    depends_on:
      - postgres
      - redis
    restart: unless-stopped

  matomo-nginx:
    image: nginx:alpine
    container_name: matomo-nginx
    ports:
      - "8080:80"
    volumes:
      - ./matomo/config:/var/www/html/config
      - ./matomo/logs:/var/www/html/logs
      - ./matomo/tmp:/var/www/html/tmp
      - ./nginx/matomo.conf:/etc/nginx/conf.d/default.conf
    depends_on:
      - matomo
    restart: unless-stopped
```

### 2. Start Service

```bash
docker-compose up -d matomo
```

### 3. Access Web Interface

Open http://localhost:8080 and complete initial setup.

---

## ⚙️ Configuration

### Environment Variables

Add to your `.env` file:
```bash
# Matomo Configuration
MATOMO_DOMAIN=localhost:8080
MATOMO_DATABASE_HOST=postgres
MATOMO_DATABASE_TABLES_PREFIX=matomo_
MATOMO_DATABASE_USERNAME=matomo
MATOMO_DATABASE_PASSWORD=matomo_password
MATOMO_DATABASE_DBNAME=matomo
```

### Nginx Configuration

Create `nginx/matomo.conf`:
```nginx
server {
    listen 80;
    server_name localhost;
    
    root /var/www/html;
    index index.php;
    
    location / {
        try_files $uri $uri/ /index.php?$args;
    }
    
    location ~ \.php$ {
        fastcgi_pass matomo:9000;
        fastcgi_index index.php;
        include fastcgi_params;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    }
}
```

---

## 🛠️ Integration with MCP

### Data Analysis with PostgreSQL MCP

Query your analytics data directly:

```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres", "postgresql://matomo:matomo_password@postgres:5432/matomo"]
    }
  }
}
```

Ask your AI: *"Show me the top 10 most visited pages this month"*

---

## 🔧 Advanced Features

### 1. Custom Reports

Create custom dashboards:
```sql
SELECT 
    page_url,
    SUM(pageviews) as total_views,
    AVG(time_spent_ref) as avg_time
FROM matomo_log_link_visit_action
WHERE server_time >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY page_url
ORDER BY total_views DESC
LIMIT 10
```

### 2. Goal Tracking

Set up conversion tracking:
```javascript
// Track form submissions
_paq.push(['trackGoal', 1, 50.00]); // Goal ID 1, value $50

// Track downloads
_paq.push(['trackLink', 'https://example.com/download.zip', 'download']);
```

### 3. A/B Testing

Enable feature flags:
```javascript
_paq.push(['AbTesting::create', {
    name: 'CheckoutFlow',
    percentage: 50,
    includedTargets: [{attribute: 'url', inverted: '0', type: 'equals', value: 'https://example.com/checkout'}],
    excludedTargets: [],
    variations: [
        {name: 'Original', activate: function (event) {}},
        {name: 'Variation1', activate: function (event) {
            // Modify checkout flow
        }}
    ]
}]);
```

---

## 💡 Best Practices

### 1. Privacy
- Enable privacy settings by default
- Anonymize IP addresses
- Respect Do Not Track
- Regular data purging

### 2. Performance
- Use Redis for caching
- Enable database optimization
- Monitor tracking performance
- Use CDN for static assets

### 3. Security
- Regular security updates
- Strong admin passwords
- IP access restrictions
- SSL/HTTPS encryption

---

## 🎯 Example Workflows

### Analytics Setup
```
"Set up tracking for our documentation site"
"Create goals for documentation page views"
"Configure custom dimensions for user types"
```

### Data Analysis
```
"Show me conversion rates by traffic source"
"Analyze user behavior flow through our site"
"Identify pages with high exit rates"
```

### Reporting
```
"Create a monthly analytics report"
"Set up automated email reports"
"Generate custom dashboard for team"
```

---

## 🐛 Troubleshooting

### "Tracking Not Working"
- Verify tracking code installation
- Check for JavaScript errors
- Ensure proper domain configuration
- Test with Matomo's diagnostic tool

### "Database Connection Failed"
- Verify database credentials
- Check network connectivity
- Ensure PostgreSQL service is running
- Verify database permissions

### "Slow Performance"
- Enable Redis caching
- Optimize database queries
- Check server resources
- Enable asset compression

### "Archiving Issues"
- Check cron job configuration
- Monitor archiving logs
- Increase PHP memory limits
- Optimize database indexes

---

## 📚 Related Resources

- **[Matomo Documentation](https://matomo.org/docs/)**
- **[PostgreSQL MCP Server](../mcp-servers/third-party/postgres.md)**
- **[Privacy Best Practices](privacy.md)**
- **[Docker Compose Guide](docker-compose.md)**

---

**Next:** Learn about [n8n Automation](n8n.md) for workflow automation!
