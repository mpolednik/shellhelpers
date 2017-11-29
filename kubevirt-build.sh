#!/bin/bash

source ./kubevirt-common.sh

mkdir -p ~/kubevirt-vagrant/src
~/Projects/src/github.com/mpolednik/byoc/byoc kubevirt ~/Projects/src/kubevirt.io ~/kubevirt-vagrant/src $@
