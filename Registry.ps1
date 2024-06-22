<#managing files, folders, and registry items#>

<#Basic about several registries:
HKLM: HKEY_LOCAL_MACHINE makes up the windows registry. This hive contains majority of the 
configuration informations of the windows software installed, as for the OS itself.

HKCU: HKEY_CURRENT_USER  contains configuration information of windows relevant of the user logged in.
(specifically the current user)
for eg: Installed printers, desktop wallpaper etc.

HKU: HKEY_USERS contains user-specific config. informations for all active users on the computer. 
This hive corresponds to a user on the system and is named with that user's security identifier, or SID.

HKCR: HKEY_CLASSES_ROOT contains files name extension associations and COM class registration
such as progIDS, CLSIDs. This registry hive contains the necessary information for Windows to know what 
to do when you ask it to do something, like to view the contents of a drive, 
or open a certain type of file, etc. 


HKCC: HKEY_CURRENT_CONFIG is a registry hive that's a part of the Windows Registry. 
It doesn't store any information itself but instead acts as a pointer, or a shortcut, 
to a registry key that keeps the information about the hardware profile currently being used.
#>

$path= "C:\Users\HP\Desktop"
New-Item -path $path -name "trial123" -ItemType Directory





