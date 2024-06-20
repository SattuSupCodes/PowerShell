#do-until loop

$a=1
$myVar=$true

do{
    if($a -ne 4){
        write-host "this loop has looped $a times"
    }
    if($a -eq 4){
        $myvar=$false
        write-host "successfully looped $a times"
    }
    $a++
}until($myVar -eq $false)