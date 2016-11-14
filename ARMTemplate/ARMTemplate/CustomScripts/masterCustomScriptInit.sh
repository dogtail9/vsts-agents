# Custom Script for Linux
apt-get update
sudo apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual
apt-get update
apt-get -y install docker-engine
service docker start
systemctl enable docker
docker swarm init
docker service create --name=viz --publish=8080:8080/tcp --constraint=node.role==manager --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock manomarks/visualizer
docker service create --name=api --publish=80:80/tcp --constraint=node.role==manager -e docker:hostname=$3-master-0.westeurope.cloudapp.azure.com -e docker:username=$2 -e docker:password=$1 user/sshtestsitefordocker:latest