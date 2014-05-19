#!/bin/bash
if [ ! -d box/virtualbox ]; then
  mkdir -p box/virtualbox
fi
packer build --only=virtualbox-iso ubuntu1204-desktop.json  | addtime
