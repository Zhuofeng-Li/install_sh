# deathstarbench k8s setup
1. `git clone https://github.com/being12345/install_sh.git --branch master`
2. tools: `./fish.sh`
3. docker: `./docker_install.sh` first run and then cancle the comment run
4. `cd k8s_install` follow readme.md in k8s_install
5. `./social_network_install.sh` install sn dependencies
6. install 
"""
$ echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
$ apt-get update && \
    apt-get install libssl1.1
$ dpkg -L libssl1.1
"""

# install Prometheus
## Master node(install Prometheus)
1. `sudo apt-get install prometheus`
2. add other worker node to /etc/prometheus/prometheus.yaml job_name: node config 
**dashboard control port: 9090 listen port: 9100**

## Worker node(install Prometheus)
1. ` sudo apt-get install prometheus-node-exporter`

## set up
`sudo prometheus --web.listen-address=:30090 &` 转发端口 30090


# set up cluster
`git clone https://github.com/Cloud-and-Distributed-Systems/Erms.git`
1. `sudo pip install -r requirements.txt ` it may slow
2. `copy and unzip additionalFiles/*.zip under /root on all slave nodes`
3. update node name `sudo hostnamectl set-hostname ` 
nodes_for_test:
- izj6c6vb9bfm8mxnvb4n44z
- izj6c6vb9bfm8mxnvb4n45z
- izj6c6vb9bfm8mxnvb4n46z
- izj6c6vb9bfm8mxnvb4n47z
nodes_for_infra:
- izj6chnuk65flw16wpdx1wz
1. set the environment variable `ERMS_APP`, its possible values are: `social` **in master node**
2. set namespace `social-network interference`
`kubectl create namespace interference`