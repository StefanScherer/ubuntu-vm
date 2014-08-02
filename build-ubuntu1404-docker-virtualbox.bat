if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1404-docker.json  | addtime

if exist box\virtualbox\ubuntu1404-docker-nocm.box (
  call vagrant box remove ubuntu1404-docker --provider=virtualbox
  call vagrant box add ubuntu1404-docker box\virtualbox\ubuntu1404-docker-nocm.box 
)
