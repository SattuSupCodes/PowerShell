

do {
    $var= read-host "enter your password"
    $var2= read-host "confirm your password"

   if($var -ne $var2){
    Write-Warning "Not matched!"
   }
   else{
    write-host "Matched!"
   }

    
    
} until ( $var -eq $var2
    <# Condition that stops the loop if it returns true #>
)


    Write-Host "do you wish to change password?"
    $yes= "yes"
    $no="no"

    $choice=read-host "type yes or no"
    if($choice -eq $yes){
       $var3= read-host "enter new password"

      $new_pswd= $var3 -replace $var

      write-host $new_pswd


    }
    else{
        Write-Host "ok!"

    }

#trying out special expressions

<#"this is my string" -cmatch "str"

"this is my string" -cnotmatch "str"

"this is my string1" -cmatch "\d"

"this is my string" -replace "string","dog"#>

<#$var= read-host "enter your password"
$var2= read-host "confirm your password"

if($var -eq $var2){
    write-host "password accepted"
}
else{
    write-host "password not accepted"
}

$var3= read-host "enter new password"
#enter break here till if=else
$var -replace $var3#>
    
    





    


