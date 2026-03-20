# Отчет по заданию: Full Config Wan

**Выполнил:** Литвинов И.А.<br>
**Группа:** 9СА-324К

---

## Содержание
[Часть 1. Базовая настройка интерфейсов](#part1)
- [Шаг 1. Тут явно что-то будет](#part1-step1)
- [Шаг 2. Тут явно что-то будет](#part1-step2)
- [Шаг 3. Тут явно что-то будет](#part1-step3)
- [Шаг 4. Тут явно что-то будет](#part1-step4)
- [Шаг 5. Тут явно что-то будет](#part1-step5)

[Часть 2. Тут явно что-то будет](#part2)
- [Шаг 1. Тут явно что-то будет](#part2-step1)

[Часть 3. Тут явно что-то будет](#part3)
- [Шаг 1. Тут явно что-то будет](#part3-step1)
- [Шаг 2. Тут явно что-то будет](#part3-step2)
- [Шаг 3. Тут явно что-то будет](#part3-step3)
- [Шаг 4. Тут явно что-то будет](#part3-step4)
- [Шаг 5. Тут явно что-то будет](#part3-step5)
- [Шаг 6. Тут явно что-то будет](#part3-step6)
- [Шаг 7. Тут явно что-то будет](#part3-step7)
- [Шаг 7. Тут явно что-то будет](#part3-step8)
- [Шаг 7. Тут явно что-то будет](#part3-step9)
- [Шаг 7. Тут явно что-то будет](#part3-step10)
- [Шаг 7. Тут явно что-то будет](#part3-step11)
- [Шаг 7. Тут явно что-то будет](#part3-step12)
- [Шаг 7. Тут явно что-то будет](#part3-step13)

[Часть 4. Тут явно что-то будет](#part4)
- [Шаг 1. Тут явно что-то будет](#part4-step1)
- [Шаг 2. Тут явно что-то будет](#part4-step2)
- [Шаг 3. Тут явно что-то будет](#part4-step3)
- [Шаг 3. Тут явно что-то будет](#part4-step4)
- [Шаг 3. Тут явно что-то будет](#part4-step5)
- [Шаг 3. Тут явно что-то будет](#part4-step6)

[Часть 5. Тут явно что-то будет](#part5)
- [Шаг 1. Тут явно что-то будет](#part5-step1)
- [Шаг 2. Тут явно что-то будет](#part5-step2)
- [Шаг 3. Тут явно что-то будет](#part5-step3)
- [Шаг 3. Тут явно что-то будет](#part5-step4)
- [Шаг 3. Тут явно что-то будет](#part5-step5)

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
