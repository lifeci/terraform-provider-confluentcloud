#!/bin/bash

set -ex

ARCH=amd64
OS=darwin

go build

export org="lifeci.dev"
export project=phx
export name=confluentcloud
export version="0.0.10"

export target_folder=$(echo "${HOME}/.terraform.d/plugins/${org}/${project}/${name}/${version}/${OS}_${ARCH}")

mkdir -p ${target_folder}
ls -la $target_folder

mv -f \
    bin/${OS}-${ARCH}/terraform-provider-confluentcloud \
    ${target_folder} #/terraform-provider-${name}

# cd examples
# terraform init
# terraform plan
# terraform output
