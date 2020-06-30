# Using Packer

The Packer config file uses the `configuration.sh` to set up the VM before taking a snapshot.

```
packer build raddit-base-image.json
```

Use `deploy.sh` to start the application on a VM with this image.
