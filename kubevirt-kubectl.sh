#!/bin/bash

pushd ~/kubevirt-vagrant/src/kubevirt.io/kubevirt
sh cluster/kubectl.sh $@
popd
