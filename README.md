# shellhelpers

Collection of useful (personal) shell scripts.

## Development Environment Related

* sync.sh - rsyncs ~/Projects/src over to $1:~/Projects/src, aliased from dotfiles/.zshrc

## Kubernetes Related

### Projects Structure

~/Projects/src/ ...

### Kubernetes Structure

~/Kube/kubernetes
├── node
│   └── bin
│       ├── kubectl
│       ├── kubelet
│       └── kube-proxy
└── server
    └── bin
        ├── apiextensions-apiserver
        ├── cloud-controller-manager
        ├── cloud-controller-manager.docker_tag
        ├── cloud-controller-manager.tar
        ├── hyperkube
        ├── kubeadm
        ├── kube-aggregator
        ├── kube-aggregator.docker_tag
        ├── kube-aggregator.tar
        ├── kube-apiserver
        ├── kube-apiserver.docker_tag
        ├── kube-apiserver.tar
        ├── kube-controller-manager
        ├── kube-controller-manager.docker_tag
        ├── kube-controller-manager.tar
        ├── kubectl
        ├── kubelet
        ├── kube-proxy
        ├── kube-proxy.docker_tag
        ├── kube-proxy.tar
        ├── kube-scheduler
        ├── kube-scheduler.docker_tag
        └── kube-scheduler.tar

### TLS

~/Kube/certs
├── apiserver
│   ├── client
│   │   ├── apiserver.csr
│   │   ├── apiserver.pem
│   │   └── privkey.pem
│   └── server
│       ├── apiserver.csr
│       ├── apiserver.pem
│       └── privkey.pem
├── ca
│   ├── ca.pem
│   └── privkey.pem
├── developer
│   ├── developer.csr
│   ├── developer.pem
│   └── privkey.pem
├── etcd
│   ├── etcd.csr
│   ├── etcd.pem
│   └── privkey.pem
├── kubectl
│   ├── kubectl.csr
│   ├── kubectl.pem
│   └── privkey.pem
└── kubelet
    ├── client
    │   ├── kubelet.csr
    │   ├── kubelet.pem
    │   └── privkey.pem
    └── server
        ├── kubelet.csr
        ├── kubelet.pem
        └── privkey.pem



* start-etcd.sh - starts etcd (requires etcd to be built within Projects dir)
* start-kube-apiserver.sh - starts apiserver
* start-kube-scheduler.sh - starts kubernetes scheduler
* start-kubelet.sh - starts kubelet

* kubectl.sh - 
* etcdctl.sh
