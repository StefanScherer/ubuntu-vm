if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1404-desktop.json  | addtime

if exist box\vmware\ubuntu1404-desktop-nocm.box (
  call vagrant box remove ubuntu1404-desktop --provider=vmware_workstation
  call vagrant box add ubuntu1404-desktop box\vmware\ubuntu1404-desktop-nocm.box 
)
