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
apt-get -y install sshpass
commandstring="sshpass -p $1 ssh -o StrictHostKeyChecking=no $2@$3-master-0.westeurope.cloudapp.azure.com"
echo $commandstring
token=$($commandstring 'echo $(sudo docker swarm join-token worker)')
echo $token
result=${token/'To add a worker to this swarm, run the following command:'}
echo $result
command="${result//\\}"
echo $command
$command