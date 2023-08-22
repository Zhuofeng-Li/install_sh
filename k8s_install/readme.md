# install k8s cluster
## Maseter node(only master node)
**You must update `--apiserver-advertise-address=192.168.10.210 ` in master.sh**
1. `./k8s_master_install.sh.sh`
2. update `flannel.yaml` `-pod-network-cidr`(same as sudo kubeadm init --pod-network-cidr=10.10.0.0/16)
3. `kubectl apply -f kube-flannel.yml`

## Worker node(only worker node)
1. `./k8s_worker_install.sh`
2. set each worknode `hostnamectl set-hostname k8s-worker1` - 3
3. `kubeadm token create --print-join-command` in Master node
4. run 1 result 



# set up
1. `pip install -r requirement.txt`		# recommend pip manually 