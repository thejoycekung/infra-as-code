# Using Terraform

Terraform will help us provision a VM that has what we need to launch Raddit. It will use the image we made with Packer, allow connections via SSH, and allow TCP connections on port 9292.

Detail the `providers` (i.e. plugins) you require in `providers.tf`. To download the necessary plugins (and initialize Terraform!), run:

```
$ terraform init
```

Once you've described the state of your infrastructure (in this case a VM), run:

```
$ terraform apply
```
