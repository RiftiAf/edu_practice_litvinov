# Отчет по заданию: Full Config Wan

**Выполнил:** Литвинов И.А.<br>
**Группа:** 9СА-324К

---

## Содержание
[Часть 1. Базовая настройка интерфейсов](#part1)
- [Шаг 1. Шаг 1. Построение топологии](#part1-step1)
- [Шаг 2. Настройка R1](#part1-step2)
- [Шаг 3. Настройка R2](#part1-step3)
- [Шаг 4. Настройка R3](#part1-step4)
- [Шаг 5. Настройка R1973](#part1-step5)

[Часть 2. Настройка PPP с аутентификацией CHAP](#part2)
- [Шаг 1. Настройка инкапсуляции PPP на R3 и R1973](#part2-step1)

[Часть 3. Настройка OSPFv2](#part3)
- [Шаг 1. Настройка OSPFv2 на R1, R2, R3](#part3-step1)
- [Шаг 2. Настройка router-id на R2](#part3-step2)
- [Шаг 3. Объявление сетей в OSPF](#part3-step3)
- [Шаг 4. Проверка процесса OSPF](#part3-step4)
- [Шаг 5. Интерфейс f0/0 R1 в area 1](#part3-step5)
- [Шаг 6. Интерфейс f0/1 R1 в area 0](#part3-step6)
- [Шаг 7. Интерфейс f0/0 R2 в area 23](#part3-step7)
- [Шаг 8. Интерфейс f0/1 R2 в area 0](#part3-step8)
- [Шаг 9. Интерфейсы R3 в area 23](#part3-step9)
- [Шаг 10. Блокировка hello-пакетов на R1](#part3-step10)
- [Шаг 11. Настройка R2 как DR](#part3-step11)
- [Шаг 12. Настройка R3 как шлюза по умолчанию](#part3-step12)

[Часть 4. Настройка BGP между R3 и R1973](#part4)
- [Шаг 1-4. Настройка BGP соседства](#part4-step1)
- [Шаг 5. Объявление loopback R1973 в BGP](#part4-step5)
- [Шаг 6. Тут явно что-то будет](#part4-step6)

[Часть 5. Тут явно что-то будет](#part5)
- [Шаг 1. Тут явно что-то будет](#part5-step1)
- [Шаг 2. Тут явно что-то будет](#part5-step2)
- [Шаг 3. Тут явно что-то будет](#part5-step3)
- [Шаг 4. Тут явно что-то будет](#part5-step4)
- [Шаг 5. Тут явно что-то будет](#part5-step5)

[Часть 6. Тут явно что-то будет](#part6)
- [Шаг 1. Тут явно что-то будет](#part6-step1)
- [Шаг 2. Тут явно что-то будет](#part6-step2)

[Часть 7. Тут явно что-то будет](#part7)
- [Шаг 1. Тут явно что-то будет](#part7-step1)
- [Шаг 2. Тут явно что-то будет](#part7-step2)
- [Шаг 3. Тут явно что-то будет](#part7-step3)
- [Шаг 4. Тут явно что-то будет](#part7-step4)

[Часть 8. Тут явно что-то будет](#part8)
- [Шаг 1. Тут явно что-то будет](#part8-step1)
- [Шаг 2. Тут явно что-то будет](#part8-step2)
- [Шаг 3. Тут явно что-то будет](#part8-step3)
- [Шаг 4. Тут явно что-то будет](#part8-step4)
- [Шаг 5. Тут явно что-то будет](#part8-step5)
- [Шаг 6. Тут явно что-то будет](#part8-step6)
- [Шаг 7. Тут явно что-то будет](#part8-step7)
- [Шаг 8. Тут явно что-то будет](#part8-step8)
- [Шаг 9. Тут явно что-то будет](#part8-step9)

[Часть 9. ](#part9)
- [Шаг 1. Тут явно что-то будет](#part9-step1)
- [Шаг 2. Тут явно что-то будет](#part9-step2)
- [Шаг 3. Тут явно что-то будет](#part9-step3)
- [Шаг 4. Тут явно что-то будет](#part9-step4)
- [Шаг 5. Тут явно что-то будет](#part9-step5)

[Полная конфигурация устройств](#part10)
---

# <a id="part1"></a>Часть 1. Базовая настройка интерфейсов

## Цель работы
Настроить базовую IP-адресацию на всех маршрутизаторах в соответствии с заданной топологией сети и обеспечить первичную связность между устройствами.

---

## Задачи
1. Построить топологию сети согласно схеме.
2. Настроить интерфейсы маршрутизатора R1.
3. Настроить интерфейсы маршрутизатора R2.
4. Настроить интерфейсы маршрутизатора R3.
5. Настроить интерфейсы маршрутизатора R1973.

---

## Ход выполнения

### <a id="part1-step1"></a>Шаг 1. Построение топологии
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/55b515e8-df8c-4d2d-b455-79dd3606272d"><br>
  <em>Рисунок 1. Схема топологии сети в Cisco Packet Tracer</em>
</p>

### <a id="part1-step2"></a>Шаг 2. Настройка R1
Настроил R1 в соответствии с ТЗ (техническое задание).
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/2c0f6a4e-12ef-4699-825e-3a66fc9037b6"><br>
  <em>Рисунок 2. Настройка R1</em>
</p>

### <a id="part1-step3"></a>Шаг 3. Настройка R2
Настроил R2 в соответствии с ТЗ.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/b43dd5cb-3e6d-4d3d-8f9e-4c3a9b6e563c"><br>
  <em>Рисунок 3. Настройка R2</em>
</p>

### <a id="part1-step4"></a>Шаг 4. Настройка R3
Настроил R3 в соответствии с ТЗ.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/1bf671b4-8ebc-4675-8a06-dbc927c13f15"><br>
  <em>Рисунок 4. Настройка R3</em>
</p>

### <a id="part1-step5"></a>Шаг 5. Настройка R1973
Настроил R1973 в соответствии с ТЗ.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/73c3ae47-6532-4b33-aecb-18343c6ee1d6"><br>
  <em>Рисунок 5. Настройка R1973</em>
</p>

---

## Вывод
В первой части работы я построил топологию сети согласно заданию. На всех маршрутизаторах я выполнил базовую настройку интерфейсов с назначением IP-адресов в соответствии с ТЗ.

---

# <a id="part2"></a>Часть 2. Настройка PPP с аутентификацией CHAP

## Цель работы
Настроить последовательное соединение между маршрутизаторами R3 и R1973 с использованием протокола PPP и обеспечить двустороннюю аутентификацию по протоколу CHAP для безопасного обмена данными.

---

## Задачи
1. Изменить инкапсуляцию на последовательных интерфейсах R3 и R1973 на PPP.
2. Создать локальные учетные записи для аутентификации.
3. Настроить аутентификацию CHAP на обоих последовательных интерфейсах.
4. Убедиться, что аутентификация прошла успешно и интерфейсы находятся в состоянии up/up.

---

## Ход выполнения

### <a id="part2-step1"></a>Шаг 1. Настройка инкапсуляции PPP на R3 и R1973
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/979fee27-8035-4900-9c33-6097f31ad757"><br>
  <em>Рисунок 6. Конфигурация на R1973</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/e8361301-8fb9-4a5a-9a9e-be38d8ec362b"><br>
  <em>Рисунок 7. Статус интерфейса s0/0/0 на R1973</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/d0c4744a-eed4-44e1-8fbf-4bf22e0ad19f"><br>
  <em>Рисунок 8. Конфигурация на R3</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/9b12420c-a1e4-44b1-93b1-c2a9d0ce8a11"><br>
  <em>Рисунок 9. Статус интерфейса s0/0/0 на R3</em>
</p>

---

## Вывод
Во второй части работы я настроил последовательное соединение между R3 и R1973 с использованием протокола PPP и аутентификации CHAP.

---

# <a id="part3"></a>Часть 3. Настройка OSPFv2

## Цель работы
Настроить протокол динамической маршрутизации OSPFv2 на маршрутизаторах R1, R2 и R3 в соответствии с ТЗ.

---

## Задачи
1. Запустить процесс OSPFv2 на всех трех маршрутизаторах.
2. Установить Router ID 0.0.0.2 на маршрутизаторе R2.
3. Объявить все подключенные сети в OSPF с распределением по зонам.
4. Обеспечить единый номер процесса OSPF 100 на всех маршрутизаторах.
5. Назначить интерфейс f0/0 R1 в зону 1.
6. Назначить интерфейс f0/1 R1 в зону 0.
7. Назначить интерфейс f0/0 R2 в зону 23.
8. Назначить интерфейс f0/1 R2 в зону 0.
9. Назначить интерфейсы g0/0, loopback 3 и loopback 33 R3 в зону 23.
10. Заблокировать отправку hello-пакетов на всех интерфейсах R1, кроме f0/1.
11. Настроить R2 так, чтобы он всегда был назначенным маршрутизатором.
12. Настроить R3 как шлюз по умолчанию.

---

## Ход выполнения

### <a id="part3-step1"></a>Шаг 1. Настройка OSPFv2 на R1, R2, R3
OSPFv2 с номером 100 на каждом маршрутизаторе.
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/c9b0a438-2586-4b03-82b1-31f5187dac9e"><br>
  <em>Рисунок 10. Настройка OSPF на R1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/3081782b-b804-4535-b198-d967f3a95e86"><br>
  <em>Рисунок 11. Настройка OSPF на R2</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/e650682b-cc4a-4c51-9579-11020e615a99"><br>
  <em>Рисунок 12. Настройка OSPF на R3</em>
</p>

### <a id="part3-step2"></a>Шаг 2. Настройка router-id на R2
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/691d567f-ff72-457a-bdcc-7bd9aaceb2c3"><br>
  <em>Рисунок 12. Настройка router-id на R2</em>
</p>

### <a id="part3-step3"></a>Шаг 3. Объявление сетей в OSPF
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/f60bbfff-5408-40af-9210-2b0c44e349dd"><br>
  <em>Рисунок 13. Объявление сетей в зоны 1 и 0 на R1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/b4645433-7fbb-4c0c-a316-baca290349c0"><br>
  <em>Рисунок 14. Объявление сетей в зоны 0 и 23 на R2</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/5398d1c7-08ae-4d77-b32e-d81c0ce57e74"><br>
  <em>Рисунок 15. Объявление сетей зоны 23 на R3</em>
</p>

### <a id="part3-step4"></a>Шаг 4. Проверка процесса OSPF
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/2128d23e-822b-4de7-8bd8-6d9a405a9e4b"><br>
  <em>Рисунок 16. Проверка OSPF на R1</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/092f6a51-5a8a-447a-bfbb-52e922f7a6b0"><br>
  <em>Рисунок 17. Проверка OSPF на R2</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/5916a723-56cb-4da6-b1ec-e9379b6bd2ce"><br>
  <em>Рисунок 18. Проверка OSPF на R3</em>
</p>

### <a id="part3-step5"></a>Шаг 5. Интерфейс f0/0 R1 в area 1
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/97cac656-c8fb-40cc-b22f-5a310074a1eb"><br>
  <em>Рисунок 19. Интерфейс f0/0 R1 в area 1</em>
</p>

### <a id="part3-step6"></a>Шаг 6. Интерфейс f0/1 R1 в area 0
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/56204640-bf87-4276-a614-4b0b22c4610d"><br>
  <em>Рисунок 20. Интерфейс f0/1 R1 в area 0</em>
</p>

### <a id="part3-step7"></a>Шаг 7. Интерфейс f0/0 R2 в area 23
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/f2037c5d-68ed-4505-824b-9c86ed19dcc7"><br>
  <em>Рисунок 21. Интерфейс f0/0 R2 в area 23</em>
</p>

### <a id="part3-step8"></a>Шаг 8. Интерфейс f0/1 R2 в area 0
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/83d1305d-6f27-4eac-b1a1-20f7c7b95b25"><br>
  <em>Рисунок 22. Интерфейс f0/1 R2 в area 0</em>
</p>

### <a id="part3-step9"></a>Шаг 9. Интерфейсы R3 в area 23
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/54da57f5-c2a3-4fea-81c2-26dec1ae9e0f"><br>
  <em>Рисунок 23. Интерфейсы R3 в area 23</em>
</p>

### <a id="part3-step10"></a>Шаг 10. Блокировка hello-пакетов на R1
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/2b6ec239-3a11-4263-a663-b40f88633233"><br>
  <em>Рисунок 24. Блокировка hello-пакетов на R1</em>
</p>

### <a id="part3-step11"></a>Шаг 11. Настройка R2 как DR
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/0a1a31f2-50e2-4db6-9de6-79a44438cbee"><br>
  <em>Рисунок 25. Настройка R2 как DR</em>
</p>

### <a id="part3-step12"></a>Шаг 12. Настройка R3 как шлюза по умолчанию
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/defd01da-fea9-4816-8c46-56af92e24d7c"><br>
  <em>Рисунок 26. Настройка R3 как шлюза по умолчанию</em>
</p>

---

## Вывод
В третьей части работы я настроил OSPFv2 на R1, R2 и R3 с распределением интерфейсов по зонам 0, 1 и 23. Все соседства установлены, межзональная маршрутизация работает, R3 распространяет маршрут по умолчанию.

---

# <a id="part4"></a>Часть 4. Настройка BGP между R3 и R1973

## Цель работы
Настроить BGP между R3 и R1973.

---

## Задачи
1. Указать номера автономных систем: R3 - AS 3, R1973 - AS 1973.
2. Установить внешнее BGP-соседство между маршрутизаторами.
3. Настроить R1973 на объявление своего loopback-интерфейса R3.
4. Настроить на R1973 маршрут по умолчанию, указывающий на R3.

---

## Ход выполнения

### <a id="part4-step1"></a>Шаг 1-4. Настройка BGP соседства
<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/8e4671b6-da92-49e0-a0e2-0c69fd6f9c24"><br>
  <em>Рисунок 27. Настройка BGP на R3</em>
</p>

<p align="center">
  <img width="1563" height="671" alt="ч1 1" src="https://github.com/user-attachments/assets/5bca8a40-7895-4cd0-9d14-7875c8ce4c4d"><br>
  <em>Рисунок 28. Настройка BGP на R1973</em>
</p>

### <a id="part4-step5"></a>Шаг 5. Объявление loopback R1973 в BGP





























# <a id="part10"></a>Полная конфигурация устройств
<details>
<summary>Конфигурация R1</summary>

```

R1#sh run
Building configuration...

Current configuration : 1134 bytes
!
version 15.1
no service timestamps log datetime msec
no service timestamps debug datetime msec
no service password-encryption
!
hostname R1
!
!
!
!
!
!
!
!
ip cef
ipv6 unicast-routing
!
no ipv6 cef
!
!
!
!
license udi pid CISCO2811/K9 sn FTX1017WUUM-
!
!
!
!
!
!
!
!
!
!
!
spanning-tree mode pvst
!
!
!
!
!
!
interface FastEthernet0/0
 ip address 10.1.1.1 255.255.255.0
 ip helper-address 10.23.23.100
 duplex auto
 speed auto
 ipv6 address FE80::1 link-local
 ipv6 address 2001:10:10:10::/64 eui-64
 ipv6 ospf 100 area 1
!
interface FastEthernet0/1
 ip address 10.12.12.1 255.255.255.0
 duplex auto
 speed auto
 ipv6 address 2001:11:11:11::1/64
 ipv6 ospf 100 area 0
!
interface Vlan1
 no ip address
 shutdown
!
router ospf 100
 log-adjacency-changes
 passive-interface default
 no passive-interface FastEthernet0/1
 network 10.1.1.0 0.0.0.255 area 1
 network 10.12.12.0 0.0.0.255 area 0
!
ipv6 router ospf 100
 router-id 0.0.0.1
 log-adjacency-changes
 passive-interface default
 no passive-interface FastEthernet0/1
!
ip classless
!
ip flow-export version 9
!
!
!
!
!
!
!
line con 0
!
line aux 0
!
line vty 0 4
 login
!
!
!
end

```

</details>

<details>
<summary>Конфигурация R2</summary>

```
R2#sh run
Building configuration...

Current configuration : 1002 bytes
!
version 15.1
no service timestamps log datetime msec
no service timestamps debug datetime msec
no service password-encryption
!
hostname R2
!
!
!
!
!
!
!
!
ip cef
ipv6 unicast-routing
!
no ipv6 cef
!
!
!
!
license udi pid CISCO2811/K9 sn FTX1017PN7N-
!
!
!
!
!
!
!
!
!
!
!
spanning-tree mode pvst
!
!
!
!
!
!
interface FastEthernet0/0
 ip address 10.23.23.2 255.255.255.0
 ip ospf priority 255
 duplex auto
 speed auto
 ipv6 address 2001:12:12:12::2/64
 ipv6 ospf 100 area 23
!
interface FastEthernet0/1
 ip address 10.12.12.2 255.255.255.0
 ip ospf priority 255
 duplex auto
 speed auto
 ipv6 address 2001:11:11:11::2/64
 ipv6 ospf 100 area 0
!
interface Vlan1
 no ip address
 shutdown
!
router ospf 100
 router-id 0.0.0.2
 log-adjacency-changes
 network 10.12.12.0 0.0.0.255 area 0
 network 10.23.23.0 0.0.0.255 area 23
!
ipv6 router ospf 100
 router-id 0.0.0.2
 log-adjacency-changes
!
ip classless
!
ip flow-export version 9
!
!
!
!
!
!
!
line con 0
!
line aux 0
!
line vty 0 4
 login
!
!
!
end

```
</details>

<details>
<summary>Конфигурация R3</summary>

```
R3#sh run
Building configuration...

Current configuration : 1673 bytes
!
version 15.1
no service timestamps log datetime msec
no service timestamps debug datetime msec
no service password-encryption
!
hostname R3
!
!
!
!
!
!
!
!
no ip cef
ipv6 unicast-routing
!
no ipv6 cef
!
!
!
username R1973 secret 5 $1$mERr$hx5rVt7rPNoS4wqbXKX7m0
!
!
license udi pid CISCO2911/K9 sn FTX15248JU8-
license boot module c2900 technology-package securityk9
!
!
!
!
!
!
!
!
!
!
!
spanning-tree mode pvst
!
!
!
!
!
!
interface GigabitEthernet0/0
 ip address 10.23.23.3 255.255.255.0
 duplex auto
 speed auto
 ipv6 address 2001:12:12:12::3/64
 ipv6 ospf 100 area 23
!
interface GigabitEthernet0/1
 no ip address
 duplex auto
 speed auto
 shutdown
!
interface GigabitEthernet0/2
 no ip address
 duplex auto
 speed auto
 shutdown
!
interface Serial0/0/0
 ip address 30.30.30.3 255.255.255.0
 encapsulation ppp
 ppp authentication chap
 ipv6 address 2001:30:30:30::3/64
 ipv6 eigrp 100
 clock rate 2000000
!
interface Serial0/0/1
 no ip address
 clock rate 2000000
 shutdown
!
interface Vlan1
 no ip address
 shutdown
!
router ospf 100
 log-adjacency-changes
 network 10.23.23.0 0.0.0.255 area 23
 network 3.0.0.0 0.255.255.255 area 23
 network 33.0.0.0 0.255.255.255 area 23
 default-information originate
!
router bgp 3
 bgp router-id 0.0.0.3
 bgp log-neighbor-changes
 no synchronization
 neighbor 30.30.30.73 remote-as 1973
!
ipv6 router ospf 100
 router-id 0.0.0.3
 default-information originate
 log-adjacency-changes
!
ipv6 router eigrp 100
 eigrp router-id 0.0.0.3
 no shutdown 
!
ip classless
ip route 0.0.0.0 0.0.0.0 Null0 
!
ip flow-export version 9
!
ipv6 route ::/0 GigabitEthernet0/0
!
!
!
!
!
!
line con 0
!
line aux 0
!
line vty 0 4
 login
!
!
!
end

```
</details>

<details>
<summary>Конфигурация R1937</summary>

```
R1973#sh run
Building configuration...

Current configuration : 1425 bytes
!
version 15.1
no service timestamps log datetime msec
no service timestamps debug datetime msec
no service password-encryption
!
hostname R1973
!
!
!
!
!
!
!
!
no ip cef
ipv6 unicast-routing
!
no ipv6 cef
!
!
!
username R3 secret 5 $1$mERr$hx5rVt7rPNoS4wqbXKX7m0
!
!
license udi pid CISCO2911/K9 sn FTX1524S832-
!
!
!
!
!
!
!
!
!
!
!
spanning-tree mode pvst
!
!
!
!
!
!
interface Loopback3
 no ip address
 ipv6 address 2001:1973:1973:1973::1973/64
 ipv6 eigrp 100
!
interface Loopback1973
 ip address 73.73.73.73 255.255.255.0
!
interface GigabitEthernet0/0
 no ip address
 duplex auto
 speed auto
 shutdown
!
interface GigabitEthernet0/1
 no ip address
 duplex auto
 speed auto
 shutdown
!
interface GigabitEthernet0/2
 no ip address
 duplex auto
 speed auto
 shutdown
!
interface Serial0/0/0
 ip address 30.30.30.73 255.255.255.0
 encapsulation ppp
 ppp authentication chap
 ipv6 address 2001:30:30:30::1973/64
 ipv6 eigrp 100
!
interface Serial0/0/1
 no ip address
 clock rate 2000000
 shutdown
!
interface Vlan1
 no ip address
 shutdown
!
router bgp 1973
 bgp log-neighbor-changes
 no synchronization
 neighbor 30.30.30.3 remote-as 3
 network 73.73.73.0 mask 255.255.255.0
!
ipv6 router eigrp 100
 eigrp router-id 0.0.0.73
 no shutdown 
!
ip classless
ip route 0.0.0.0 0.0.0.0 30.30.30.3 
!
ip flow-export version 9
!
ipv6 route ::/0 2001:30:30:30::3
!
!
!
!
!
!
line con 0
!
line aux 0
!
line vty 0 4
 login
!
!
!
end

```
</details>
