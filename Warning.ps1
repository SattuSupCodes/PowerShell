$myAge= read-host "enter your age"
if($myAge -le 17){
    write-warning "MINOR MINOR!"
}
else{
    write-host "Welcome to the club"
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