ip route add default via 192.168.11.1
sleep 3 && ip route add 192.168.42.1 dev ppp0 &
pppd noauth noipdefault nodetach pty "nc $1 3333"
