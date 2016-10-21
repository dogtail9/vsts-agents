docker login

docker build -t="dogtail9/vsts-agent:ubuntu-base-v0.1" -f="Dockerfile.Ubuntu.Base" .
docker build -t="dogtail9/vsts-agent:ubuntu-node-v0.1" -f="Dockerfile.Ubuntu.NodeJS" .

docker push dogtail9/vsts-agent:ubuntu-base-v0.1
docker push dogtail9/vsts-agent:ubuntu-node-v0.1