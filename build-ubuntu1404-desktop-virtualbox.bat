if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1404-desktop.json  | addtime

if exist ubuntu1404-desktop_virtualbox.box (
  call vagrant box remove ubuntu1404-desktop --provider=virtualbox
  call vagrant box add ubuntu1404-desktop ubuntu1404-desktop_virtualbox.box 
)
