<#Remote systems will need to have port
5985 for HTTP and 5986 for HTTPS opened on their firewalls to enable proper
communications over WinRM.#>

<# Requirement for proper communications is configuring the WinRM service.
Before configuring these options, you should be aware of the security implications.
When you allow all systems or a range of IPs to leverage the WinRM service, you
may be putting your system at risk.#>

New-CimSession