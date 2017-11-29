#!/bin/bash

source ./kubevirt-common.sh

pushd ~/kubevirt-vagrant/src/kubevirt.io/kubevirt
vagrant destroy
popd
