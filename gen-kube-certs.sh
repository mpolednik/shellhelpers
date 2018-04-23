CERT_PATH=~/Kube/certs
CA_PATH=${CERT_PATH}/ca
ETCD_PATH=${CERT_PATH}/etcd
APISERVER_PATH=${CERT_PATH}/apiserver
KUBELET_PATH=${CERT_PATH}/kubelet
KUBECTL_PATH=${CERT_PATH}/kubectl

# 1 - key path
# 2 - csr path
# 3 - cert path
gen () {
        openssl req -new -nodes -newkey rsa:2048 -keyout ${1} -out ${2} -subj "/C=US/CN=localhost"
        openssl x509 -req -in ${2} -CA ${CA_PATH}/ca.pem -CAkey ${CA_PATH}/key.pem -CAcreateserial -out ${3}
}

mkdir -p ${CA_PATH}
openssl req -x509 -new -nodes -newkey rsa:2048 -keyout ${CA_PATH}/key.pem -out ${CA_PATH}/ca.pem -subj "/C=US/CN=localdomain"

mkdir -p ${ETCD_PATH}
gen ${ETCD_PATH}/etcd.key ${ETCD_PATH}/etcd.csr ${ETCD_PATH}/etcd.pem

mkdir -p ${APISERVER_PATH}/server
gen ${APISERVER_PATH}/server/apiserver.key ${APISERVER_PATH}/server/apiserver.csr ${APISERVER_PATH}/server/apiserver.pem

mkdir -p ${APISERVER_PATH}/client
gen ${APISERVER_PATH}/client/apiserver.key ${APISERVER_PATH}/client/apiserver.csr ${APISERVER_PATH}/client/apiserver.pem

mkdir -p ${KUBELET_PATH}/server
gen ${KUBELET_PATH}/server/kubelet.key ${KUBELET_PATH}/server/kubelet.csr ${KUBELET_PATH}/server/kubelet.pem

mkdir -p ${KUBELET_PATH}/client
gen ${KUBELET_PATH}/client/kubelet.key ${KUBELET_PATH}/client/kubelet.csr ${KUBELET_PATH}/client/kubelet.pem

mkdir -p ${KUBECTL_PATH}
gen ${KUBECTL_PATH}/kubectl.key ${KUBECTL_PATH}/kubectl.csr ${KUBECTL_PATH}/kubectl.pem
