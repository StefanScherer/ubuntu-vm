if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1204-desktop.json  | addtime

if exist box\virtualbox\ubuntu1204-desktop-nocm.box (
  call vagrant box remove ubuntu1204-desktop --provider=virtualbox
  call vagrant box add ubuntu1204-desktop box\virtualbox\ubuntu1204-desktop-nocm.box 
)
