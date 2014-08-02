if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1404.json  | addtime

if exist box\virtualbox\ubuntu1404-nocm.box (
  call vagrant box remove ubuntu1404 --provider=virtualbox
  call vagrant box add ubuntu1404 box\virtualbox\ubuntu1404-nocm.box 
)
