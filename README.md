<h1 align="center">Kubernetes - EKS</h1>

<p align="center">
  <img alt="Kubernetes" src="https://img.shields.io/static/v1?label=Kubernetes&message=Monitoring&color=8257E5&labelColor=000000"  />
  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=49AA26&labelColor=000000">
</p>

<p align="center">
  <a href="#-projeto">Projeto</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-roadmap">Roadmap</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-referências">Referências</a>
</p>

<p align="center">
  <img alt="EKS" src="data/eks_terraform.png">
</p>

## 💡 Projeto

Provisionar uma infraestrutura na AWS: VPC, EKS, OICD etc
Utilizar IAC


## ✨ Tecnologias

- AWS
- Kubernetes
- Terraform

## 👣 Roadmap

```console
- Provisionamento de ambiente na AWS com terraform
```

- [x] [Instalar pré-requisitos para o projeto ]
  - [x] [Instalação do AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
  - [x] [Instalação do Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
  - [x] [Instalação do Kubectl](https://kubernetes.io/docs/tasks/tools/)
  - [x] [Instalação do Docker](https://docs.docker.com/engine/install/)
  - [x] [Instalação do Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
  - [x] [Instalação do Helm](https://helm.sh/docs/intro/install/)
  - [x] [Instalação do eksctl](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/setting-up-eksctl.html)
- [x] [Preparar um Setup network na aws com o Terraform]
  - [x] Definição de faixas de ip a serem utilizadas
  - [x] [1 Vpc](/terraform/vpc.tf)
  - [x] [2 Subnets Públicas](/terraform/vpc.public-subnetes.tf)
  - [x] [2 Subnets Privadas](/terraform/vpc.private-subnetes.tf)
  - [x] [1 Internt Gateway](/terraform/vpc.internetgateway.tf)
  - [x] [1 Nat Gateway](/terraform/vpc.nat-gateway.tf)
  - [x] [1 Route Table Pública](/terraform/vpc.public-route-table.tf)
  - [x] [1 Route Table Privada](/terraform/vpc.private-route-table.tf)
- [x] Subir Cluster Kubernetes
  - [x] [EKS](/terraform/eks.cluster.tf)
  - [x] [Node Groups](/terraform/eks.cluster.node-group.tf)
  - [x] [Permissionamento ao Cluster](/terraform/eks.cluster.permissions.tf)
  - [x] [Permissionamento Node Groups - Example IAM Role for EKS Node Group](/terraform/eks.cluster.node-group.permissions.tf)
- [ ] [ECR](/terraform/ecr.repository.tf)
- [ ] [Playbook Ansible para Instalar AWS Load Balancer](/ansible/site.yaml)

```console
- Provisionamento de Setup Kuberntes Local com Kubespray
```
- [x] Instalação de pré-requisitos
  - [x] [Vagrant]
  - [x] [Virtualbox]
  - [x] [Ansible]
- [x] [Preparar arquivos Kubespray]
- [x] [Preparar vagrantfile para subir as vms]
- [x] [Balanceador para gerenciamento do Cluster]
  - [x] Haproxy - Docker Composer
- [ ] Instalação de features no Cluster
  - [ ] Helm
  - [ ] Argo CD

```console
- Preparar estrutra para GITOPS
```
- [ ] [Definir uma estrutura para Gitops]
  - [ ] ApplicationSets
  - [ ] ArgoProjects
  - [ ] Apps

## 📄 Referências

- [Documentação AWS resources Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Ansible - Best Practices](https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html#best-practices)
- [Instalação so AWS Load Balancer Controller usando Helm ](https://docs.aws.amazon.com/eks/latest/userguide/lbc-helm.html)
- [Enabling IAM Roles for Service Accounts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) 
- [Ansible - Run Your First Command and Playbook](https://docs.ansible.com/ansible/latest/network/getting_started/first_playbook.html)
- [Install the AWS Load Balancer Controller using Helm](https://docs.aws.amazon.com/eks/latest/userguide/lbc-helm.html)
- [Creating or updating Kubeconfig file for an Amazon EKS cluster](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html)
- [Argo CD](https://argo-cd.readthedocs.io/en/stable/)
- [Argo CD - List Generator](https://argo-cd.readthedocs.io/en/stable/operator-manual/applicationset/Generators-List/)
- [Argo CD - Git Generator](https://argo-cd.readthedocs.io/en/stable/operator-manual/applicationset/Generators-Git/)
- [Argo CD - Generating Applications with ApplicationSet](https://argo-cd.readthedocs.io/en/stable/user-guide/application-set/)
- [Argo Project](https://github.com/argoproj)