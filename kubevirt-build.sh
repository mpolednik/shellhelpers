#!/bin/bash

source ./kubevirt-common.sh

pushd ~/kubevirt-vagrant/src/kubevirt.io/kubevirt
vagrant up
sed "s/make all DOCKER_TAG=devel//g" cluster/vagrant/sync_build.sh | bash -
./cluster/vagrant/sync_config.sh
make manifests
./cluster/deploy.sh
popd
