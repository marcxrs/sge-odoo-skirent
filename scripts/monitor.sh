#!/bin/bash
echo "=== ESTAT DELS CONTENIDORS ==="
docker compose ps
echo ""
echo "=== ÚS DE RECURSOS ==="
docker stats --no-stream --format "table {{.Container}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}"
echo ""
echo "=== ESPAI EN DISC ==="
docker system df
echo ""
echo "=== CONNEXIONS ACTIVES ==="
curl -s http://localhost:8069/web/health && echo " Odoo OK" || echo " Odoo ERROR"
