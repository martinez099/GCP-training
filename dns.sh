sudo docker exec --user root n1 bash -c "iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300"
sudo docker exec --user root n2 bash -c "iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300"
sudo docker exec --user root n3 bash -c "iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300"

sudo docker exec --user root s1 bash -c "iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300"
sudo docker exec --user root s2 bash -c "iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300"
sudo docker exec --user root s3 bash -c "iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300"

