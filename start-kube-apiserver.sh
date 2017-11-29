~/Kube/kubernetes/server/bin/kube-apiserver --tls-cert-file ~/Kube/certs/apiserver/server/apiserver.pem --tls-private-key-file ~/Kube/certs/apiserver/server/privkey.pem --etcd-cafile ~/Kube/certs/ca/ca.pem --etcd-certfile ~/Kube/certs/apiserver/client/apiserver.pem --etcd-keyfile ~/Kube/certs/apiserver/client/privkey.pem --etcd-servers https://localhost:4001 --kubelet-certificate-authority ~/Kube/certs/ca/ca.pem --kubelet-client-certificate ~/Kube/certs/kubelet/client/kubelet.pem --kubelet-client-key ~/Kube/certs/kubelet/client/privkey.pem --authorization-mode RBAC $@