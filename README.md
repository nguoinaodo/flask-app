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

You can also use ifconfig to bring an interface up or down. The difference with ifup is that
ifconfig eth0 up will re-activate the nic keeping its existing (current) configuration, whereas
ifup will read the correct file that contains a (possibly new) configuration and use this config
file to bring the interface up.
