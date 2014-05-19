if not exist box\virtualbox mkdir box\virtualbox
packer build --only=vmware-iso ubuntu1204-100gb.json  | addtime
