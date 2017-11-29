#!/bin/bash

source ./kubevirt-common.sh

mkdir -p ~/kubevirt-vagrant/src
~/Projects/src/github.com/mpolednik/byoc/byoc kubevirt ~/Projects/src/kubevirt.io ~/kubevirt-vagrant/src
pushd ~/kubevirt-vagrant/src/kubevirt.io/kubevirt
vagrant up
sed "s/make all DOCKER_TAG=devel//g" cluster/vagrant/sync_build.sh | bash -
./cluster/vagrant/sync_config.sh
make manifests
./cluster/deploy.sh
popd
