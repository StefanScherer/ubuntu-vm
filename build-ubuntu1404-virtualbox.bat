if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1404.json  | addtime

if exist ubuntu1404_virtualbox.box (
  call vagrant box remove ubuntu1404 --provider=virtualbox
  call vagrant box add ubuntu1404 ubuntu1404_virtualbox.box 
)
