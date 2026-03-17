# Часть 1. Настройка коммутаторов в Новосибирске

## Цель работы
Отработать навыки базовой настройки сетевых устройств в Новосибирске

## Задачи
1.Переименовать устройства по шаблону и настроить MOTD-баннеры.
2.На коммутаторах SW0 и SW1 создать VLAN 2–4 и настроить EtherChannel.
3.Организовать безопасное удаленное управление и настроить Management IP.
4.Защитить порты доступа и консоль устройства.

## Ход выполнения

### Шаг 1. Построение топологии
В эмуляторе Cisco Packet Tracer была собрана сеть согласно схеме. Топология включает три коммутатора, один многоуровнеый коммутатор и три маршрутизатора, сервер и 8 ПК, соединенные соответствующими интерфейсами.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/21187e6f-3ff9-456b-8c6b-3bee6040daeb"><br>
  <em>Рисунок 1. Схема топологии сети в Cisco Packet Tracer</em>
</p>

### Шаг 2. Создание сообщения дня
На каждом роутере настроено сообщение дня согласно формату из ТЗ(Техническое задание). На фотографии видно, какую команду я применял.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/e14e06b8-5e5e-4c87-94d4-69ce43818658"><br>
  <em>Рисунок 2. Настройка MOTD</em>
</p>

### Шаг 3. Переименование устройств
Переименовал все устройства согласно шаблону ТЗ — как визуально, так и с помощью команды hostname.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/dc9b1e83-6a3c-4d6c-b0bc-162e83f96445"><br>
  <em>Рисунок 3. Изменение hostname на rus-nsk-sw0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/c4f9cabc-4b82-4cf0-9bf3-8affd3cde236"><br>
  <em>Рисунок 4. Измененные устройства</em>
</p>

### Шаг 4. Настройка доменных имен
Доменные имена коммутаторов настроены по местоположению.
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

### Шаг 5. Создание VLAN на коммутаторах в Новосибирске
На коммутаторах SW0 и SW1 созданы VLAN 2, 3 и 4 без присвоения им имен.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/06b9c8cd-66a3-4c3f-99bc-76075f70953a"><br>
  <em>Рисунок 12. Cоздание VLAN на SW0</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/9e54b458-57e4-44b0-b624-5b9b6f9b4fdf"><br>
  <em>Рисунок 13. Cоздание VLAN на SW1</em>
</p>

### Шаг 6. Назначение портов
На коммутаторах SW0 и SW1 выполнена привязка интерфейсов к VLAN согласно нумерации портов.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/8d48a4e5-c608-4870-9677-ab790c860cd9"><br>
  <em>Рисунок 14. Настройка access-портов для VLAN на SW1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/2745d4b3-3f9b-4460-8d56-5bb0e5ae64d5"><br>
  <em>Рисунок 15. Настройка access-портов для VLAN на SW0</em>
</p>













