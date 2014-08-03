if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1404.json  | addtime

if exist ubuntu1404_vmware.box (
  call vagrant box remove ubuntu1404 --provider=vmware_workstation
  call vagrant box add ubuntu1404 ubuntu1404_vmware.box 
)
