#!/bin/sh
if [ $# -lt 1 ]; then
    echo "usage: sh node_join.sh <masterip:port>"
    exit 1
fi
token=$(kubeadm  token create)
ca=$(openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //')
echo "kubeadm join --token ${token} $1 --discovery-token-ca-cert-hash sha256:${ca}"
