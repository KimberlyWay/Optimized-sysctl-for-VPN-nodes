#!/bin/bash
# Качаем конфиг напрямую в /etc/
curl -o /etc/sysctl.conf https://raw.githubusercontent.com/KimberlyWay/Optimized-sysctl-for-VPN-nodes/main/sysctl.conf
# Применяем
sysctl -p
echo "Конфигурация успешно применена!"
