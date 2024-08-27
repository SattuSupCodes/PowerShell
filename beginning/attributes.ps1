# If the files, folders, and registry items don't exist, create them.
if (!(test-path "HKCU:\Software\MyCustomSoftware\ConnectionInformation"))
{ New-item –path "HKCU:\Software\MyCustomSoftware\ConnectionInformation"
-force | out-null }
if (!(test-path "HKCU:\Software\MyCustomSoftware\AppSettings")) { Newitem –path "HKCU:\Software\MyCustomSoftware\AppSettings" -force | outnull }
if (!(test-path "c:\Program Files\MyCustomSoftware\Graphics\")){ Newitem –path "c:\Program Files\MyCustomSoftware\" -name Graphics –ItemType
Directory | out-null }
if (!(test-path "c:\Program Files\MyCustomSoftware\Logs\")){ New-item –
path "c:\Program Files\MyCustomSoftware\" -name Logs –ItemType Directory
| out-null }
if (!(test-path "c:\Program Files\MyCustomSoftware\Graphics\FirstGraphic.
png")) { New-item –path "c:\Program Files\MyCustomSoftware\Graphics\"
-name "FirstGraphic.png" –ItemType File | out-null }
if (!(test-path "c:\Program Files\MyCustomSoftware\Graphics\
SecondGraphic.png")) { New-item –path "c:\Program Files\MyCustomSoftware\
Graphics\" -name "SecondGraphic.png" –ItemType File | out-null }


$regItem = get-item –path "HKCU:\Software\MyCustomSoftware\"
$regItem