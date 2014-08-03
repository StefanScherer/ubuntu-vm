if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1404-desktop.json  | addtime

if exist ubuntu1404-desktop_vmware.box (
  call vagrant box remove ubuntu1404-desktop --provider=vmware_workstation
  call vagrant box add ubuntu1404-desktop ubuntu1404-desktop_vmware.box 
)
