# Login to the VM and run the following commands:

## First run the following commands to update and install GIT as Super-User

```bash
sudo su
apt-get update
apt-get install git -y
```
## Clone the Git Repository:
```bash
git clone https://github.com/cloud-dust09/k8s-foundation-01.git
```

## Setup the Environment:

Run the `setup.sh` file to install docker, kubectl and minikube.
```bash
cd k8s-foundation-01/setup_env
./setup.sh
```

## Once installed check if they are installed properly:

```bash
docker version
minikube version
kubectl version
```

## Start Minikube

```bash
minikube start --driver=none
```

```bash
kubectl proxy --address='0.0.0.0' --disable-filter=true . &
minikube dashboard --url=false . &
```
