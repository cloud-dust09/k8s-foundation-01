echo "------------------Start: Install Docker---------------"
apt-get update && apt-get install docker.io -y

echo "------------------Start & Enable Docker---------------"
systemctl start docker
systemctl enable docker

echo "--------------------Install Kubectl------------------"
apt-get update && apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubectl

echo "--------------------Install MiniKube------------------"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
mkdir -p /usr/local/bin/
install minikube /usr/local/bin/

echo "--------------------Install Conntrack------------------"
apt-get install conntrack

echo "-----------------------------End-----------------------"