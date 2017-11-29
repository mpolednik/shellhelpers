#!/bin/bash

~/Projects/src/github.com/mpolednik/byoc/byoc kubevirt ~/Projects/src/kubevirt.io ~/kubevirt-vagrant
pushd ~/kubevirt-vagrant/kubevirt.io/kubevirt
VAGRANT_NUM_NODES=2 vagrant up
sed "s/make all DOCKER_TAG=devel//g" cluster/vagrant/sync_build.sh | bash -
./cluster/vagrant/sync_config.sh
make manifests
export KUBECTL="cluster/kubectl.sh --core" && ./cluster/deploy.sh
popd
