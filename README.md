
# 🚀 Optimized sysctl for VPN Nodes

Этот конфиг оптимизирует ядро Linux для работы высоконагруженных VPN-нод (**VLESS, Xray, Reality, WireGuard**). 

---

### 🌟 Основные преимущества
* **Максимальная скорость:** Включение алгоритма **Google BBR** для стабильного стриминга (YouTube 4K, Twitch) даже при потерях пакетов.
* **Анти-лаг (Anti-Bufferbloat):** Отключение "медленного старта" (`tcp_slow_start_after_idle`) убирает задержки при открытии сайтов после простоя.
* **Стабильность Reality:** Отключены ECN и Fast Open, которые часто конфликтуют с XTLS-Reality и вызывают долгий резолв или "затыки" соединения.
* **Выносливость:** Увеличены лимиты файловых дескрипторов и TCP-буферов для обслуживания тысяч одновременных подключений без ошибок "Too many open files".

---

## 🛠 Быстрая установка (One-line)

Запустите эту команду на своем сервере, чтобы автоматически скачать и применить конфиг:

```bash
sudo curl -sSL https://raw.githubusercontent.com/KimberlyWay/Optimized-sysctl-for-VPN-nodes/main/sysctl.conf -o /etc/sysctl.conf && sudo sysctl -p
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

