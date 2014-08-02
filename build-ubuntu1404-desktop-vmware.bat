if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1404-desktop.json  | addtime
