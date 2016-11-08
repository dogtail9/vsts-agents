Param(
  [string]$username,
  [string]$password,
  [string]$dns
)
Install-Module Posh-SSH -Force
$pass = convertto-securestring -String $password -AsPlainText -Force
$cred=new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $pass
New-SSHSession -ComputerName $dns"-master-0.westeurope.cloudapp.azure.com" -Credential $cred -Force
$response=Invoke-SSHCommand -Index 0 -Command "sudo docker swarm join-token worker"
$temp=$response.Output -replace "\\",""
$temp=$temp -replace "To add a worker to this swarm, run the following command:",""
$temp=[System.Text.Encoding]::Unicode.GetBytes($temp)
$temp=[System.Text.Encoding]::Unicode.GetString($temp)
$command=$temp -replace "    "," "
Invoke-Expression $command