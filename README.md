## 1. Config static IP Ubuntu 16.04
Edit /etc/network/interfaces.
```
auto wlp3s0
    iface wlp3s0 inet static
    address 192.168.0.106
    gateway 192.168.0.1
    netmask 255.255.255.0
```
Save and reload.
```
ifdown wlp3s0 --force
ip addr flush wlp3s0
ifup wlp3s0
```
