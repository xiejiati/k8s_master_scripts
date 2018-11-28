#!/bin/sh
token=$(kubeadm  token create)
ca=$(openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //')
echo "kubeadm join --token ${token} 119.28.223.52:6443 --discovery-token-ca-cert-hash sha256:${ca}"
