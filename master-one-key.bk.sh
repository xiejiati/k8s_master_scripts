hostnamectl --static set-hostname  $1
sed -i '$a\127.0.0.1 '$1 /etc/hosts 
swapoff -a
echo 'before kubeadm init ...'
modprobe br_netfilter
echo '1' > /proc/sys/net/ipv4/ip_forward
kubeadm init --apiserver-advertise-address=$2 --pod-network-cidr=10.244.0.0/16
#安装完之后
sleep 5
export KUBECONFIG=/etc/kubernetes/admin.conf
echo "all done"
