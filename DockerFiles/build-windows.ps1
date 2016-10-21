docker login

docker build -t="dogtail9/vsts-agent:windows-base-v0.1" -f="Dockerfile.Windows.Base" .
docker build -t="dogtail9/vsts-agent:windows-dotnetcore-v0.1" -f="Dockerfile.Windows.DotNetCore" .
docker build -t="dogtail9/vsts-agent:windows-node-v0.1" -f="Dockerfile.Windows.NodeJS" .
docker build -t="dogtail9/vsts-agent:windows-grunt-v0.1" -f="Dockerfile.Windows.Grunt" .
docker build -t="dogtail9/vsts-agent:windows-v0.1" -t="dogtail9/vsts-agent:latest" -f="Dockerfile.Windows.SingleFile" .

docker push dogtail9/vsts-agent:windows-base-v0.1
docker push dogtail9/vsts-agent:windows-dotnetcore-v0.1
docker push dogtail9/vsts-agent:windows-node-v0.1
docker push dogtail9/vsts-agent:windows-grunt-v0.1
docker push dogtail9/vsts-agent:windows-v0.1
docker push dogtail9/vsts-agent:latest