# OpenVPN automation

A simple demo using Azure, Terraform and Ansible to provision a virtual machine with CentOS, install OpenVPN and download the client config.

## Initial setup

```
az login
terraform init
```

## Create infrastructure

```
terraform plan -out plan_create -var location="northeurope"
terraform apply "plan_create"
ansible-playbook -i inventory.ini main.yml -v
```

## Destroy infrastructure

```
terraform plan -destroy -out plan_destroy
terraform apply "plan_destroy"
```
