#!/bin/bash

# Awesome MCP Servers - Installation Script
# For Unix/Linux/macOS systems

set -e

echo "🚀 Starting Awesome MCP Servers Installation..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "📝 Creating .env file from example..."
    cp .env.example .env
    echo "✅ Please edit .env file with your preferred passwords and API keys"
fi

# Create necessary directories
echo "📁 Creating directories..."
mkdir -p prometheus
mkdir -p grafana
mkdir -p nginx

# Copy configuration files if they don't exist
if [ ! -f prometheus/prometheus.yml ]; then
    echo "📝 Creating Prometheus configuration..."
    cp prometheus/prometheus.yml.example prometheus/prometheus.yml 2>/dev/null || echo "Please create prometheus/prometheus.yml"
fi

if [ ! -f grafana/grafana.ini ]; then
    echo "📝 Creating Grafana configuration..."
    cp grafana/grafana.ini.example grafana/grafana.ini 2>/dev/null || echo "Please create grafana/grafana.ini"
fi

if [ ! -f nginx/matomo.conf ]; then
    echo "📝 Creating Nginx configuration for Matomo..."
    cp nginx/matomo.conf.example nginx/matomo.conf 2>/dev/null || echo "Please create nginx/matomo.conf"
fi

# Pull Docker images
echo "📥 Pulling Docker images..."
docker-compose pull

# Start services
echo "🚀 Starting services..."
docker-compose up -d

# Wait for services to start
echo "⏳ Waiting for services to start..."
sleep 30

# Check service status
echo "🔍 Checking service status..."
docker-compose ps

echo "✅ Installation complete!"
echo ""
echo "📊 Access your services at:"
echo "   Gitea: http://localhost:3000"
echo "   Matomo: http://localhost:8080"
echo "   n8n: http://localhost:5678"
echo "   Prometheus: http://localhost:9090"
echo "   Grafana: http://localhost:3001"
echo ""
echo "🔐 Remember to:"
echo "   1. Edit .env file with secure passwords"
echo "   2. Configure services through their web interfaces"
echo "   3. Set up backups for persistent data"
echo ""
echo "📖 Visit https://github.com/HassanAliMAli/Awesome-MCP-Servers for documentation"