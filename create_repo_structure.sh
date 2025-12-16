#!/usr/bin/env bash
set -euxo pipefail

# Directorio base
BASE_DIR=~/projects/k8s-virtualbox-terraform

# Crear estructura de directorios
mkdir -p $BASE_DIR/{packer/http,terraform/cloudinit,ansible/{group_vars,playbooks,roles/{kubeadm_cp,kubeadm_worker,calico,metallb,ingress,sample_app}},scripts}

# Crear ficheros vacíos
touch $BASE_DIR/README.md
touch $BASE_DIR/Makefile

# Packer
touch $BASE_DIR/packer/ubuntu-2204.json
touch $BASE_DIR/packer/http/preseed.cfg

# Terraform
touch $BASE_DIR/terraform/versions.tf
touch $BASE_DIR/terraform/providers.tf
touch $BASE_DIR/terraform/variables.tf
touch $BASE_DIR/terraform/network.tf
touch $BASE_DIR/terraform/vms.tf
touch $BASE_DIR/terraform/outputs.tf
touch $BASE_DIR/terraform/cloudinit/cp-user-data.yaml
touch $BASE_DIR/terraform/cloudinit/cp-meta-data.yaml
touch $BASE_DIR/terraform/cloudinit/wk-user-data.yaml
touch $BASE_DIR/terraform/cloudinit/wk-meta-data.yaml

# Ansible
touch $BASE_DIR/ansible/inventory.ini
touch $BASE_DIR/ansible/group_vars/all.yml
touch $BASE_DIR/ansible/playbooks/10-bootstrap-cp.yml
touch $BASE_DIR/ansible/playbooks/20-join-workers.yml
touch $BASE_DIR/ansible/playbooks/30-install-calico.yml
touch $BASE_DIR/ansible/playbooks/40-install-metallb.yml
touch $BASE_DIR/ansible/playbooks/50-install-ingress.yml
touch $BASE_DIR/ansible/playbooks/60-deploy-sample.yml

# Scripts
touch $BASE_DIR/scripts/gen_cloudinit_iso.sh
touch $BASE_DIR/scripts/host_prereqs_fedora.sh

# Permisos: scripts ejecutables
chmod +x $BASE_DIR/scripts/*.sh

echo "✅ Estructura creada en $BASE_DIR"

