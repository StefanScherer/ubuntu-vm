if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1404-desktop.json  | addtime

if exist box\virtualbox\ubuntu1404-desktop-nocm.box (
  call vagrant box remove ubuntu1404-desktop --provider=virtualbox
  call vagrant box add ubuntu1404-desktop box\virtualbox\ubuntu1404-desktop-nocm.box 
)
