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

- [ ] [Instalar pré-requisitos para o projeto ]
- [ ] [Preparar um Setup network na aws com o Terraform]
  - [ ] Definição de faixas de ip a serem utilizadas
  - [ ] 1 Vpc
  - [ ] 2 Subnets Públicas
  - [ ] 2 Subnets Privadas
  - [ ] 1 Internt Gateway
  - [ ] 1 Nat Gateway
  - [ ] 1 Route Table associada a subnet pública
  - [ ] 1 Route Table associada a subnet privada
- [ ] Subir Cluster Kubernetes
  - [ ] EKS
  - [ ] Node Groups
  - [ ] Permissionamento ao Cluster e Node Groups
- [ ] ECR


## 📄 Referências

- [Instalação do AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Instalação do Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Instalação do Kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Instalação do Docker](https://docs.docker.com/engine/install/)
- [Instalação do Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Instalação do Helm](https://helm.sh/docs/intro/install/)
- [Documentação AWS resources Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)