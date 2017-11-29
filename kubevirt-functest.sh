#!/bin/bash

pushd ~/kubevirt-vagrant/kubevirt.io/kubevirt
go get golang.org/x/tools/cmd/goimports && go get github.com/Masterminds/glide
make sync
GOPATH=~/kubevirt-vagrant make functest
popd
