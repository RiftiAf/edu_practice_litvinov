# Отчет по заданию: Configure LAN 1

**Выполнил:** Литвинов И.А.<br>
**Группа:** 9СА-324К

## Содержание
[Часть 1. Настройка коммутаторов в Новосибирске](#part1)<br>
- [Шаг 1. Построение топологии](#part1-step1)
- [Шаг 2. Создание сообщения дня](#part1-step2)
- [Шаг 3. Переименование устройств](#part1-step3)
- [Шаг 4. Настройка доменных имен](#part1-step4)
- [Шаг 5. Создание VLAN на коммутаторах в Новосибирске](#part1-step5)
- [Шаг 6. Назначение портов](#part1-step6)
- [Шаг 7. Создание EtherChannel между коммутаторами](#part1-step7)
- [Шаг 8. Создание Management Interface на SW0 для VLAN 1](#part1-step8)
- [Шаг 9. Создание Management Interface на SW1 для VLAN 2](#part1-step9)
- [Шаг 10. Включение SSHv2 на коммутаторах в Новосибирске](#part1-step10)
- [Шаг 11. Настройка транка на интерфейсе f0/24 коммутатора SW0](#part1-step11)
- [Шаг 12. Настройка MOTD для SW0 и SW1](#part1-step12)
- [Шаг 13. Настройка безопасности портов](#part1-step13)
- [Шаг 14. Защита консольного подключения](#part1-step14)
- [Шаг 15. Отключение таймаута exec для консоли и SSH](#part1-step15)
- [Шаг 16. Предотвращение прерывания консольной сессии логами](#part1-step16)
- [Шаг 17. Изменение размера буфера истории](#part1-step17)
[Часть 2. Настройка маршрутизатора R1 и DHCP](#part2)<br>

# <a id="part1"></a>Часть 1. Настройка коммутаторов в Новосибирске

## Цель работы
Отработать навыки базовой настройки сетевых устройств в Новосибирске

## Задачи
1.Переименовать устройства по шаблону и настроить MOTD-баннеры.
2.На коммутаторах SW0 и SW1 создать VLAN 2–4 и настроить EtherChannel.
3.Организовать безопасное удаленное управление и настроить Management IP.
4.Защитить порты доступа и консоль устройства.

## Ход выполнения

### <a id="part1-step1"></a>Шаг 1. Построение топологии
В эмуляторе Cisco Packet Tracer собрал сеть согласно схеме. Топология включает три коммутатора, один многоуровнеый коммутатор и три маршрутизатора, сервер и 8 ПК, соединенные соответствующими интерфейсами.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/21187e6f-3ff9-456b-8c6b-3bee6040daeb"><br>
  <em>Рисунок 1. Схема топологии сети в Cisco Packet Tracer</em>
</p>

### <a id="part1-step2"></a>Шаг 2. Создание сообщения дня
На каждом роутере настроил сообщение дня согласно формату из ТЗ(Техническое задание). На фотографии видно, какую команду я применял.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/e14e06b8-5e5e-4c87-94d4-69ce43818658"><br>
  <em>Рисунок 2. Настройка MOTD</em>
</p>

### <a id="part1-step3"></a>Шаг 3. Переименование устройств
Переименовал все устройства согласно шаблону ТЗ - как визуально, так и с помощью команды hostname.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/dc9b1e83-6a3c-4d6c-b0bc-162e83f96445"><br>
  <em>Рисунок 3. Изменение hostname на rus-nsk-sw0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/c4f9cabc-4b82-4cf0-9bf3-8affd3cde236"><br>
  <em>Рисунок 4. Измененные устройства</em>
</p>

### <a id="part1-step4"></a>Шаг 4. Настройка доменных имен
Доменные имена коммутаторов настроил по местоположению.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/522e42e2-d6fe-4331-8f25-f5200dfab792"><br>
  <em>Рисунок 5. Настройка domain-name на R1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/f4e4933a-e5e2-4ec7-8f72-27971311356c"><br>
  <em>Рисунок 6. Настройка domain-name на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/9eece586-bef9-4222-a019-0f141ac0e26c"><br>
  <em>Рисунок 7. Настройка domain-name на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/3aa7656e-9fbe-4dca-9035-fe7e7cfaa997"><br>
  <em>Рисунок 8. Настройка domain-name на MLS</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/d3f8f3bb-94ab-4cc7-9262-364d15db80b7"><br>
  <em>Рисунок 9. Настройка domain-name на R3</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/759627e5-8654-41f1-ad1f-50daad76be23"><br>
  <em>Рисунок 10. Настройка domain-name на R2</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/25246b69-bdb2-4ee4-a5c0-d17c51b7438c"><br>
  <em>Рисунок 11. Настройка domain-name на SW2</em>
</p>

### <a id="part1-step5"></a>Шаг 5. Создание VLAN на коммутаторах в Новосибирске
На коммутаторах SW0 и SW1 создал VLAN 2, 3 и 4 без присвоения им имен.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/06b9c8cd-66a3-4c3f-99bc-76075f70953a"><br>
  <em>Рисунок 12. Cоздание VLAN на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/9e54b458-57e4-44b0-b624-5b9b6f9b4fdf"><br>
  <em>Рисунок 13. Cоздание VLAN на SW1</em>
</p>

### <a id="part1-step6"></a>Шаг 6. Назначение портов
На коммутаторах SW0 и SW1 выполнил привязку интерфейсов к VLAN согласно нумерации портов.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/8d48a4e5-c608-4870-9677-ab790c860cd9"><br>
  <em>Рисунок 14. Настройка портов для VLAN на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/2745d4b3-3f9b-4460-8d56-5bb0e5ae64d5"><br>
  <em>Рисунок 15. Настройка портов для VLAN на SW0</em>
</p>

### <a id="part1-step7"></a>Шаг 7. Создание EtherChannel между коммутаторами
Выполнил настройка EtherChannel между коммутаторами SW0 и SW1. Для агрегации использованы интерфейсы G0/1 и G0/2. На обоих устройствах задал режим active, что обеспечивает инициацию согласования канала с обеих сторон. После создания канала интерфейс Port‑Channel 1 перевел в режим trunk.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/74689d94-4c05-418c-8ae2-813e78d3a132"><br>
  <em>Рисунок 16. EtherChannel на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/b1b238f6-d7db-4120-83b4-c838eb4fb940"><br>
  <em>Рисунок 17. EtherChannel на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/d83635f5-84f5-4636-84f0-4973d77b1573"><br>
  <em>Рисунок 17.1. EtherChannel на SW0 (продолжение)</em>
</p>

### <a id="part1-step8"></a>Шаг 8. Создание Management Interface на SW0 для VLAN 1
На коммутаторе SW0 выполнил настройку интерфейса управления в VLAN 1. Назначил IP‑адрес 1.0.0.50/8, задал шлюз по умолчанию 1.0.0.1. Данная конфигурация обеспечивает удалённое управление коммутатором из других подсетей.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/2d0ca4cd-d0ba-47de-afae-45ffb5f1f124"><br>
  <em>Рисунок 18. Настройка SVI на SW0</em>
</p>

### <a id="part1-step9"></a>Шаг 9. Создание Management Interface на SW1 для VLAN 2
Для SW1 настроил управление через VLAN 2. Задал адрес 2.0.0.50/8 и шлюз 2.0.0.1 - теперь к этому коммутатору тоже можно подключаться удаленно.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/56f29a63-435a-41f7-a3f7-68b1384c7d04"><br>
  <em>Рисунок 19. Настройка SVI на SW1</em>
</p>

### <a id="part1-step10"></a>Шаг 10. Включение SSHv2 на коммутаторах в Новосибирске
Для удаленного управления коммутаторами SW0 и SW1 включил SSHv2. Создал локального пользователя nsk с паролем cisco. Сгенерировал RSA-ключи и настроил VTY-линии так, чтобы принимали только SSH-подключения.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/e29f38bb-4853-4a15-8e00-e441c21b2426"><br>
  <em>Рисунок 20. Настройка SSHv2 на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/5d440b89-ace1-4818-885f-616ce8facd9a"><br>
  <em>Рисунок 21. Настройка SSHv2 на SW0</em>
</p>

### <a id="part1-step11"></a>Шаг 11. Настройка транка на интерфейсе f0/24 коммутатора SW0
Порт f0/24 на SW0, который идет на роутер R1, перевел в режим trunk. Через этот линк будет ходить трафик всех VLAN для маршрутизации между ними.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/b4731f41-7cc6-4691-a88f-20583890bb57"><br>
  <em>Рисунок 22. Настройка транка на интерфейсе f0/24 SW0</em>
</p>

### <a id="part1-step12"></a>Шаг 12. Настройка MOTD для SW0 и SW1
Добавил MOTD-баннер на оба коммутатора Новосибирска. На SW0 выводится сообщение «Eto rus-nsk-sw0», на SW1 - «Eto rus-nsk-sw1».
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/15f62d2e-8cb1-4d9b-a37b-77301a4dc654"><br>
  <em>Рисунок 23. Настройка баннера на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/06db7174-304e-48e9-badc-6c2cedec97ce"><br>
  <em>Рисунок 24. Настройка баннера на SW1</em>
</p>

### <a id="part1-step13"></a>Шаг 13. Настройка безопасности портов
Настроил безопасность на портах доступа (f0/2-4) на обоих коммутаторах.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/90ca89f8-1131-4c8f-be30-29f24b1c8214"><br>
  <em>Рисунок 25. Настройка безопасности портов на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/f4bf3005-77bf-47f7-9669-974e28d09942"><br>
  <em>Рисунок 25.1. Настройка безопасности портов на SW0 (продолжение)</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/355df864-d939-4390-8943-299366d25731"><br>
  <em>Рисунок 26. Настройка безопасности портов на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/4d7676d2-2dce-47e7-8ffd-2a468cb4cd7d"><br>
  <em>Рисунок 26.1. Настройка безопасности портов на SW1 (продолжение)</em>
</p>

### <a id="part1-step14"></a>Шаг 14. Защита консольного подключения
Настроил защиту консольного подключения на SW0 и SW1. Использовал те же учетные данные, что и для SSH - пользователь nsk с паролем cisco.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/8d63bd8f-6168-4737-993e-23c14e4a333c"><br>
  <em>Рисунок 27. Консольная аутентификация на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/ceb4d743-65bf-48e5-8d84-5f6bd48dbbba"><br>
  <em>Рисунок 28. Консольная аутентификация на SW0</em>
</p>

### <a id="part1-step15"></a>Шаг 15. Отключение таймаута exec для консоли и SSH
Отключил автоматическое завершение сессий по таймауту для консоли и VTY-линий. Теперь сессии не будут разрываться из-за бездействия.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/398cf7d3-aee0-466d-93e7-509ff5e9c375"><br>
  <em>Рисунок 29. Отключение exec-timeout на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/5c686680-78c9-465f-b914-198d607f1d18"><br>
  <em>Рисунок 30. Отключение exec-timeout на SW1</em>
</p>

### <a id="part1-step16"></a>Шаг 16. Предотвращение прерывания консольной сессии логами
Настроил синхронизацию логирования на консольной сессии, чтобы системные сообщения не прерывали ввод команд.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/1bf749bd-c0a4-48b3-99b7-9e3ce2068a06"><br>
  <em>Рисунок 31. Синхронизация логирования на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/1b1e1afd-6f0e-42ff-9afb-a21b84dfc279"><br>
  <em>Рисунок 32. Синхронизация логирования на SW0</em>
</p>

### <a id="part1-step17"></a>Шаг 17. Изменение размера буфера истории
Увеличил размер буфера истории команд до 256 строк на консольной сессии и VTY-линиях.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/acaee47f-629d-4ed9-9179-236d5d4e785a"><br>
  <em>Рисунок 33. Настройка размера буфера истории на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/2860bb6c-4185-4fb1-9fc4-567f070c3203"><br>
  <em>Рисунок 34. Настройка размера буфера истории на SW1</em>
</p>

# <a id="part2"></a>Часть 2. Настройка маршрутизатора R1 и DHCP












