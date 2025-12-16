# k8s-virtualbox-terraform
Terraform + kubeadm con múltiples VMs (control-plane + workers) Arquitectura 1 VM control-plane + N VMs worker (Ubuntu).  cloud-init prepara dependencias (kubeadm/kubelet/kubectl, containerd, sysctl).  kubeadm init en el master; kubeadm join en workers usando token y CA hash.  CNI (Calico/Flannel/Cilium) instalada por manifest.


# Kubernetes VirtualBox Terraform

Laboratorio producción-like de Kubernetes en VirtualBox usando **Terraform**, **Ansible** y **kubeadm**.  
Topología: **1 control-plane + 2 workers**, con **Calico**, **MetalLB** y **Nginx Ingress**.

---

## 🚀 Requisitos

- Fedora host con VirtualBox instalado
- 8 cores, 16 GB RAM, 150 GB disco
- Terraform >= 1.9
- Packer >= 1.11
- Ansible >= 2.15
- kubectl
- Clave SSH pública en `~/.ssh/id_rsa.pub`

---

## ⚙️ Instalación rápida en Fedora

Ejecuta:

```bash
make prereqs
Este comando instala Terraform, Packer, Ansible y kubectl en tu host.

▶️ Uso
Levantar todo el entorno:

bash
make up
Ver estado del clúster:

bash
make status
Destruir VMs:

bash
make down
Entrar al control-plane:

bash
make kube
✅ Validación
kubectl get nodes → 3 nodos en estado Ready

kubectl get svc hello-svc → IP asignada por MetalLB

Añadir hello.local a /etc/hosts apuntando a esa IP

curl http://hello.local → debe responder hello from k8s

📂 Estructura del repositorio
packer/ → imagen base Ubuntu

terraform/ → definición de red y VMs

ansible/ → playbooks para kubeadm, Calico, MetalLB, Ingress y app de prueba

scripts/ → utilidades (prereqs, cloud-init ISO)

Makefile → orquestación completa

📝 Notas
# Kubernetes VirtualBox Terraform

Laboratorio producción-like de Kubernetes en VirtualBox usando **Terraform**, **Ansible** y **kubeadm**.  
Topología: **1 control-plane + 2 workers**, con **Calico**, **MetalLB** y **Nginx Ingress**.

---

## 🚀 Requisitos

- Fedora host con VirtualBox instalado
- 8 cores, 16 GB RAM, 150 GB disco
- Terraform >= 1.9
- Packer >= 1.11
- Ansible >= 2.15
- kubectl
- Clave SSH pública en `~/.ssh/id_rsa.pub`

---

## ⚙️ Instalación rápida en Fedora

Ejecuta:

```bash
make prereqs
Este comando instala Terraform, Packer, Ansible y kubectl en tu host.

▶️ Uso
Levantar todo el entorno:

bash
make up
Ver estado del clúster:

bash
make status
Destruir VMs:

bash
make down
Entrar al control-plane:

bash
make kube
✅ Validación
kubectl get nodes → 3 nodos en estado Ready

kubectl get svc hello-svc → IP asignada por MetalLB

Añadir hello.local a /etc/hosts apuntando a esa IP

curl http://hello.local → debe responder hello from k8s

📂 Estructura del repositorio
packer/ → imagen base Ubuntu

terraform/ → definición de red y VMs

ansible/ → playbooks para kubeadm, Calico, MetalLB, Ingress y app de prueba

scripts/ → utilidades (prereqs, cloud-init ISO)

Makefile → orquestación completa

📝 Notas
Este repo está pensado para laboratorios y entrevistas técnicas.
No usar en producción real sin ajustes de seguridad y alta disponibilidad.
Este repo está pensado para laboratorios y entrevistas técnicas.
No usar en producción real sin ajustes de seguridad y alta disponibilidad.
