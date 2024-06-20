#do-while loop

$a= 1
$myVar=$false

do{
    if($a -ne 4){
        write-host "this task has been looped $a times"
    }
    if($a -eq 4){
        $myVar=$true
        write-host "looped $a times successfully"
    }
    $a++
}
while($myVar -eq $false)
