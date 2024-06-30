get-wmiobject -list | Where-Object{$_.Name -like "*Time*"}
$classProperties = (get-cimclass -class win32_Printer).CimClassProperties
$classProperties.count

get-wmiobject -list | where{$_.Name -like "*time*"}