# k8s-virtualbox-terraform
Terraform + kubeadm con múltiples VMs (control-plane + workers) Arquitectura 1 VM control-plane + N VMs worker (Ubuntu).  cloud-init prepara dependencias (kubeadm/kubelet/kubectl, containerd, sysctl).  kubeadm init en el master; kubeadm join en workers usando token y CA hash.  CNI (Calico/Flannel/Cilium) instalada por manifest.
