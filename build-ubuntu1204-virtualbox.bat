if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1204.json  | addtime

if exist box\virtualbox\ubuntu1204-nocm.box (
  call vagrant box remove ubuntu1204 --provider=virtualbox
  call vagrant box add ubuntu1204 box\virtualbox\ubuntu1204-nocm.box 
)
