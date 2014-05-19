if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1204-desktop.json  | addtime
