# Security Policy

## 🛡️ Supported Versions

We release security updates for the following versions:

| Version | Supported          |
| ------- | ------------------ |
| 1.x.x   | ✅ Active          |
| < 1.0   | ❌ Not supported   |

## 🚨 Reporting a Vulnerability

If you discover a security vulnerability, please follow these steps:

### 1. Private Disclosure
**Do not create a public issue.** Instead:

1. Email security@awesome-mcp-servers.org
2. Include detailed information about the vulnerability
3. Provide steps to reproduce the issue
4. Include potential impact assessment

### 2. What to Include
- **Description** - Clear explanation of the vulnerability
- **Steps to Reproduce** - Exact steps to reproduce the issue
- **Impact** - Potential damage or risk
- **Environment** - Version, OS, configuration
- **Mitigation** - Any temporary workarounds

### 3. Response Timeline
- **24 hours** - Initial acknowledgment
- **7 days** - Detailed response
- **30 days** - Fix release (if applicable)

## 🔐 Security Best Practices

### API Keys & Secrets
- Never commit API keys to version control
- Use environment variables for secrets
- Rotate keys regularly
- Use strong, unique keys for each service

### Docker Security
- Keep Docker images updated
- Use official, verified images
- Run containers as non-root users
- Limit container capabilities
- Regular security scanning

### Network Security
- Use firewalls to restrict access
- Enable HTTPS/SSL for all services
- Regular port scanning
- Monitor network traffic
- Use VPN for remote access

### Data Protection
- Encrypt sensitive data at rest
- Use TLS for data in transit
- Regular backups with encryption
- Access logging and monitoring
- Data retention policies

## 🔍 Security Scanning

We regularly scan for:
- **Dependency vulnerabilities** - Automated checks
- **Container security** - Image scanning
- **Code analysis** - Static analysis tools
- **Penetration testing** - Periodic assessments

## 📚 Resources

- **[OWASP Top 10](https://owasp.org/www-project-top-ten/)**
- **[Docker Security Best Practices](https://docs.docker.com/engine/security/)**
- **[NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)**

## 🤝 Responsible Disclosure

We believe in responsible disclosure. If you follow these guidelines:
- We will acknowledge your contribution
- We will work with you to resolve the issue
- We will credit you in release notes (if desired)
- We will not take legal action

## 📧 Contact

For security issues: **security@awesome-mcp-servers.org**  
For general questions: **support@awesome-mcp-servers.org**

---

*Last updated: October 27, 2025*