<#Remote systems will need to have port
5985 for HTTP and 5986 for HTTPS opened on their firewalls to enable proper
communications over WinRM.#>

<# Requirement for proper communications is configuring the WinRM service.
Before configuring these options, you should be aware of the security implications.
When you allow all systems or a range of IPs to leverage the WinRM service, you
may be putting your system at risk.#>
 
New-CimSession #creating a new CIM session

$sessionOptions= New-CimSessionOption -Protocol Dcom
New-CimSession -SessionOption $sessionOptions -ComputerName localhost -name localsessions

#using this session for remote management

New-CimSession
$cimsession= Get-CimSession
$cimsession

New-CimSession -name mycomputer
$newCimsession= Get-CimSession -name mycomputer
Invoke-CimMethod -CimSession $newCimsession -class win32_process -MethodName create -Arguments @{CommandLine='calc.exe';CurrentDirectory="c:\windows\
system32"}