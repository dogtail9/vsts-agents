docker build --no-cache -t="dogtail9/vsts-agent:windows-base-v0.1" -f="Dockerfile.Windows.Base" .
docker build --no-cache -t="dogtail9/vsts-agent:windows-dotnetcore-v0.1" -f="Dockerfile.Windows.DotNetCore" .
docker build --no-cache -t="dogtail9/vsts-agent:windows-node-v0.1" -f="Dockerfile.Windows.NodeJS" .
docker build --no-cache -t="dogtail9/vsts-agent:windows-grunt-v0.1" -f="Dockerfile.Windows.Grunt" .
docker build --no-cache -t="dogtail9/vsts-agent:windows-java-v0.1" -f="Dockerfile.Windows.Java" .
docker build --no-cache -t="dogtail9/vsts-agent:windows-maven-v0.1" -f="Dockerfile.Windows.Maven" .
docker build --no-cache -t="dogtail9/vsts-agent:windows-v0.1" -t="dogtail9/vsts-agent:latest" -f="Dockerfile.Windows.SingleFile" .