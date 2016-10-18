docker build -t="dogtail9/vsts-agent-windows-base" -f="Dockerfile.Windows.Base" .
docker build -t="dogtail9/vsts-agent-windows-dotnetcore" -f="Dockerfile.Windows.DotNetCore" .
docker build -t="dogtail9/vsts-agent-windows-node" -f="Dockerfile.Windows.NodeJS" .
docker build -t="dogtail9/vsts-agent-windows-grunt" -f="Dockerfile.Windows.Grunt" .