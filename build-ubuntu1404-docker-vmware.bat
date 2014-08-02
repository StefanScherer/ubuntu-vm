if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1404-docker.json  | addtime

if exist box\vmware\ubuntu1404-docker-nocm.box (
  call vagrant box remove ubuntu1404-docker --provider=vmware_workstation
  call vagrant box add ubuntu1404-docker box\vmware\ubuntu1404-docker-nocm.box 
)
