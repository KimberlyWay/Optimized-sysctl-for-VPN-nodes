
# 🚀 Optimized sysctl for VPN Nodes

Этот конфиг оптимизирует ядро Linux для работы высоконагруженных VPN-нод (**VLESS, Xray, Reality, WireGuard**). 

### Что дает этот тюнинг:
* **BBR:** Максимальная скорость загрузки (особенно YouTube 4K и тяжелые файлы).
* **Мгновенный отклик:** Отключение `tcp_slow_start_after_idle` убирает задержки после простоя (важно для Telegram и серфинга).
* **Стабильность:** Исправлены проблемы с долгой прогрузкой страниц (ECN=0).
* **Выносливость:** Подняты лимиты открытых файлов для тысяч одновременных соединений.

---

## 🛠 Быстрая установка (One-line)

Запустите эту команду на своем сервере, чтобы автоматически скачать и применить конфиг:

```bash
sudo curl -sSL [https://raw.githubusercontent.com/KimberlyWay/Optimized-sysctl-for-VPN-nodes/main/sysctl.conf](https://raw.githubusercontent.com/KimberlyWay/Optimized-sysctl-for-VPN-nodes/main/sysctl.conf) -o /etc/sysctl.conf && sudo sysctl -p
```

---

## 📝 Ручная установка

1. Откройте файл конфигурации:
   ```bash
   sudo nano /etc/sysctl.conf
   ```
2. Удалите старое содержимое и вставьте текст из файла `sysctl.conf` данного репозитория.
3. Примените изменения:
   ```bash
   sudo sysctl -p
   ```

---

