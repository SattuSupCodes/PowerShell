# trying try/catch error parameters

<# The Try/Catch block is used for handling terminating errors
and has a very simple structure. You first use the Try { } section of code and then
use Catch { } to catch any errors and perform actions based on the errors. In the
instance that you catch an error, you can access the exception object by declaring $_.
The $_ refers to what is in the current pipeline. Since an error occurred during the
Try sequence, the data in the pipeline is the actual error information #>

try{
    2+"haha"

}
catch{
    write-host "error processing the command $_"
}

Write-host "Attempting to Add a String without Exception Handling:"

# try/catch with parameters

try{
    Get-Process "chrome" -ErrorAction SilentlyContinue -ErrorVariable err 

}
catch{
    Write-host "Try/Catch Exception Details: $_"
}
if($err){
    Write-host "Cmdlet Error Handling Error Details: $err"

}

#output won't show error as chrome exists

try{
    Get-Process "sattu" -ErrorAction SilentlyContinue -ErrorVariable err 

}
catch{
    Write-host "Try/Catch Exception Details: $_"
}
if($err){
    Write-host "Cmdlet Error Handling Error Details: $err"

}

#output shows error

