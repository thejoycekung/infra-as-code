# Infrastructure as Code

This repo is the result of following Artemmkin's [Infrastructure as Code tutorial](https://github.com/Artemmkin/infrastructure-as-code-tutorial).

It takes a [simple webapp](https://github.com/Artemmkin/raddit) (built with Ruby and using MongoDB) and hosts it using Google Cloud.

There are two tracks with this project: using VMs only, and using containers hosted on VMs.

In the first approach, we use:

1. Packer to create an image with all our dependencies in GCP
2. Terraform to provision a VM using the Packer image. Terraform will also setup SSH and expose a TCP port on the machine, and output a public-facing IP (so that we can access it).
3. Ansible to get the application code and start the application.

In the second approach, we use Terraform to configure a Kubernetes cluster on GCP. Kubernetes helps us designate 2 Service objects for the Raddit app itself and the MongoDB service, and 2 deployment objects for those.

To see what the 'manual' operations are (besides creating a VM in GCP on your own), peek into the scripts/ folder.
