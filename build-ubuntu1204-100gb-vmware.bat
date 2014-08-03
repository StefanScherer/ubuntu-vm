if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1204-100gb.json  | addtime

if exist ubuntu1204-100gb_vmware.box (
  call vagrant box remove ubuntu1204-100gb --provider=vmware_workstation
  call vagrant box add ubuntu1204-100gb ubuntu1204-100gb_vmware.box 
)
