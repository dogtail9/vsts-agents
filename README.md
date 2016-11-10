# Containerized vsts-agents based on Windows and Linux
This project contains the dockerfiles for Dogtail9 containerized VSTS Agents

## Build images

### Windows images
```cmd
docker build -t="dogtail9/vsts-agent-windows-base" -f="Dockerfile.Windows.Base" .
docker build -t="dogtail9/vsts-agent-windows-dotnetcore" -f="Dockerfile.Windows.DotNetCore" .
docker build -t="dogtail9/vsts-agent-windows-node" -f="Dockerfile.Windows.NodeJS" .
docker build -t="dogtail9/vsts-agent-windows-grunt" -f="Dockerfile.Windows.Grunt" .
docker build -t="dogtail9/vsts-agent-windows-singlefile" -f="Dockerfile.Windows.SingleFile" .
```

### Linux images
```cmd
docker build -t="dogtail9/vsts-agent-ubuntu-base" -f="Dockerfile.Ubuntu.Base" .
docker build -t="dogtail9/vsts-agent-ubuntu-node" -f="Dockerfile.Ubuntu.NodeJS" .
```

## Run container

### Required parameters
```cmd
docker run -e VSTS_ACCOUNT=<ACOUNT> -e VSTS_TOKEN=<TOKEN> -it <IMAGE>
```

### Optional parameters
```cmd
docker run -e VSTS_ACCOUNT=<ACOUNT> -e VSTS_TOKEN=<TOKEN> -e VSTS_AGENT=[NAME] -e VSTS_POOL=[NAME]-e VSTS_WORK=[PATH] -it <IMAGE>
```

### Windows 
```cmd
docker run --rm -e VSTS_ACCOUNT=<ACCOUNT> -e VSTS_TOKEN=<TOKEN> -it dogtail9/vsts-agent-windows-base
docker run --rm -e VSTS_ACCOUNT=<ACCOUNT> -e VSTS_TOKEN=<TOKEN> -it dogtail9/vsts-agent-windows-node
docker run --rm -e VSTS_ACCOUNT=<ACCOUNT> -e VSTS_TOKEN=<TOKEN> -it dogtail9/vsts-agent-windows-grunt
```

### Specify the agent name
```cmd
docker run --rm -e VSTS_ACCOUNT=<ACCOUNT> -e VSTS_TOKEN=<TOKEN> -e VSTS_AGENT=<NAME> -it dogtail9/vsts-agent-windows-singlefile
```

### Linux
```cmd
docker run --rm -e VSTS_ACCOUNT=<ACOUNT> -e VSTS_TOKEN=<TOKEN> -it microsoft/vsts-agent:ubuntu-16.04-2.107.1
docker run --rm -e VSTS_ACCOUNT=<ACOUNT> -e VSTS_TOKEN=<TOKEN> -it dogtail9/vsts-agent-ubuntu-base
docker run --rm -e VSTS_ACCOUNT=<ACOUNT> -e VSTS_TOKEN=<TOKEN> -it dogtail9/vsts-agent-ubuntu-node
```

## ARM Template
<a href="http://armviz.io/#/?load=https%3A%2F%2raw.githubusercontent.com%2Fdogtail9%2Fvsts-agents%2Fmaster%2FARMTemplate%2FARMTemplate%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-application-gateway-create%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
