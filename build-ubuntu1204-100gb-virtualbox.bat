if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1204-100gb.json  | addtime

if exist box\virtualbox\ubuntu1204-100gb-nocm.box (
  call vagrant box remove ubuntu1204-100gb --provider=virtualbox
  call vagrant box add ubuntu1204-100gb box\virtualbox\ubuntu1204-100gb-nocm.box 
)
