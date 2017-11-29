#!/bin/bash

source ./kubevirt-common.sh

pushd ~/kubevirt-vagrant/src/kubevirt.io/kubevirt
sh cluster/kubectl.sh $@
popd
