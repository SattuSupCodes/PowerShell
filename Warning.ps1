$myAge= read-host "enter your age"
if($myAge -le 17){
    write-warning "MINOR MINOR!"
}
else{
    write-host "Welcome to the club"
}