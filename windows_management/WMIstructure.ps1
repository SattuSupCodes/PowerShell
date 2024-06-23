<# WMI is made up of three components. These three components include the WMI
consumers, the WMI infrastructure, and the WMI providers. When you are using
PowerShell, you will leverage all three of these components to interact with the
hardware and operating system.

The MOF files provide the
WMI infrastructure with a set of instructions on how the WMI consumers may
interact with the hardware or the operating system. This can include fields that can
be read, or actions that can be invoked on the hardware itself.

#>

get-wmiobject -namespace root\cimv2 -class win32_computersystem
# using cimsession to call instead of wmiobject
get-ciminstance -namespace root\cimv2 -class win32_computersystem
<#The get-ciminstance cmdlet has the ability to run on
remote systems over a CIM session, whereas the get-wmiobject only permits local
execution.#>