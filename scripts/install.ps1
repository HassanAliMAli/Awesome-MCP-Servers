# Awesome MCP Servers - Installation Script
# For Windows PowerShell

Write-Host "🚀 Starting Awesome MCP Servers Installation..." -ForegroundColor Green

# Check if Docker is installed
try {
    $dockerVersion = docker --version
    Write-Host "✅ Docker found: $dockerVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker is not installed. Please install Docker Desktop first." -ForegroundColor Red
    exit 1
}

# Check if Docker Compose is installed
try {
    $composeVersion = docker-compose --version
    Write-Host "✅ Docker Compose found: $composeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker Compose is not installed. Please install Docker Desktop first." -ForegroundColor Red
    exit 1
}

# Create .env file if it doesn't exist
if (-not (Test-Path .env)) {
    Write-Host "📝 Creating .env file from example..." -ForegroundColor Yellow
    Copy-Item .env.example .env
    Write-Host "✅ Please edit .env file with your preferred passwords and API keys" -ForegroundColor Green
}

# Create necessary directories
Write-Host "📁 Creating directories..." -ForegroundColor Yellow
New-Item -ItemType Directory -Path "prometheus" -Force | Out-Null
New-Item -ItemType Directory -Path "grafana" -Force | Out-Null
New-Item -ItemType Directory -Path "nginx" -Force | Out-Null

# Copy configuration files if they don't exist
if (-not (Test-Path "prometheus/prometheus.yml")) {
    Write-Host "📝 Creating Prometheus configuration..." -ForegroundColor Yellow
    # This would copy from example if it existed
    Write-Host "Please create prometheus/prometheus.yml" -ForegroundColor Yellow
}

if (-not (Test-Path "grafana/grafana.ini")) {
    Write-Host "📝 Creating Grafana configuration..." -ForegroundColor Yellow
    # This would copy from example if it existed
    Write-Host "Please create grafana/grafana.ini" -ForegroundColor Yellow
}

if (-not (Test-Path "nginx/matomo.conf")) {
    Write-Host "📝 Creating Nginx configuration for Matomo..." -ForegroundColor Yellow
    # This would copy from example if it existed
    Write-Host "Please create nginx/matomo.conf" -ForegroundColor Yellow
}

# Pull Docker images
Write-Host "📥 Pulling Docker images..." -ForegroundColor Yellow
docker-compose pull

# Start services
Write-Host "🚀 Starting services..." -ForegroundColor Yellow
docker-compose up -d

# Wait for services to start
Write-Host "⏳ Waiting for services to start..." -ForegroundColor Yellow
Start-Sleep -Seconds 30

# Check service status
Write-Host "🔍 Checking service status..." -ForegroundColor Yellow
docker-compose ps

Write-Host "✅ Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "📊 Access your services at:" -ForegroundColor Cyan
Write-Host "   Gitea: http://localhost:3000" -ForegroundColor Cyan
Write-Host "   Matomo: http://localhost:8080" -ForegroundColor Cyan
Write-Host "   n8n: http://localhost:5678" -ForegroundColor Cyan
Write-Host "   Prometheus: http://localhost:9090" -ForegroundColor Cyan
Write-Host "   Grafana: http://localhost:3001" -ForegroundColor Cyan
Write-Host ""
Write-Host "🔐 Remember to:" -ForegroundColor Yellow
Write-Host "   1. Edit .env file with secure passwords" -ForegroundColor Yellow
Write-Host "   2. Configure services through their web interfaces" -ForegroundColor Yellow
Write-Host "   3. Set up backups for persistent data" -ForegroundColor Yellow
Write-Host ""
Write-Host "📖 Visit https://github.com/HassanAliMAli/Awesome-MCP-Servers for documentation" -ForegroundColor Cyan