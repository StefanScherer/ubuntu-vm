if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1204-100gb.json  | addtime

if exist ubuntu1204-100gb_virtualbox.box (
  call vagrant box remove ubuntu1204-100gb --provider=virtualbox
  call vagrant box add ubuntu1204-100gb ubuntu1204-100gb_virtualbox.box 
)
