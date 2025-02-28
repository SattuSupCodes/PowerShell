# PowerShell Journey

PowerShell is a task-automation and configuration tool by Microsoft.
This repository is my journal as I learn the basics of PowerShell.




##  To Add Folders/Files

```PowerShell
New-Item -path "C:\users\HP\Desktop\blogsite" -name "siteAssets"-ItemType Directory
```

## Definitely Try This
```
start msedge "https://www.youtube.com/watch?v=dQw4w9WgXcQ"


```
$myAge= read-host "enter your age"
if($myAge -le 17){
    write-warning "MINOR MINOR!"
}
else{
    write-host "Welcome to the club"
}
```

## Get-Commands
```
Get-command #This will pull the list of all commands installed in your version
of powershell
```

## Get-Service
```
Get-service #Pulls the list of all services available in your powershell/windows.os
(Get-service).count #gives the number of total services
```
## Much More
The above are just two snippets of what's covered and are basic, but as we go on we'll surely end up with a great skill-set of PowerShell!
