# Error and exception handling –parameters

function serviceName($svcName){
    Get-Service $svcName -ErrorAction SilentlyContinue -ErrorVariable Error
    if($error){
        Write-Warning "error occured : $error"
        return
    }
    else {
        write-host "Successfully retrieved details for $svcName"
    }

}

$a= read-host "service"
serviceName($a)