# install k8s cluster
## Maseter node(only master node)
**You must update `--apiserver-advertise-address=192.168.10.210 ` in master.sh**
1. `./k8s_master_install.sh.sh`
2. update `flannel.yaml` `-pod-network-cidr`(same as sudo kubeadm init --pod-network-cidr=10.10.0.0/16)
3. `kubectl apply -f kube-flannel.yml`

## Worker node(only worker node)
1. `./k8s_worker_install.sh`
1. `kubeadm token create --print-join-command` in Master node
2. run 1 result 

# install Prometheus
## Master node(install Prometheus)
1. `sudo apt-get install prometheus`
2. add other worker node to /etc/prometheus/prometheus.yaml job_name: node config 
**dashboard control port: 9090 listen port: 9100**

## Worker node(install Prometheus)
1. ` sudo apt-get install prometheus-node-exporter`

# install social_network(all nodes)
1. `sudo .\social_network_install.sh`

# set up
1. `pip install -r requirement.txt`