if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1204.json  | addtime

if exist box\vmware\ubuntu1204-nocm.box (
  call vagrant box remove ubuntu1204 --provider=vmware_workstation
  call vagrant box add ubuntu1204 box\vmware\ubuntu1204-nocm.box 
)
