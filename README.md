# PowerShell Journey

PowerShell is a task-automation and configuration tool by Microsoft.
This repository is my journal as I learn the basics of PowerShell.


## Make Him Speak
![image](https://github.com/user-attachments/assets/312083b2-d292-453f-aa47-011f08cc8c4c)
```
Add-Type -AssemblyName System.Speech

$recognizer = New-Object System.Speech.Recognition.SpeechRecognitionEngine
$speaker = New-Object System.Speech.Synthesis.SpeechSynthesizer


$recognizer.SetInputToDefaultAudioDevice()


$choices = New-Object System.Speech.Recognition.Choices
$choices.Add("hello")
$choices.Add("how are you")
$choices.Add("goodbye")
$choices.Add("abc")

$grammarBuilder = New-Object System.Speech.Recognition.GrammarBuilder
$grammarBuilder.Append($choices)

$grammar = New-Object System.Speech.Recognition.Grammar($grammarBuilder)
$recognizer.LoadGrammar($grammar)


Write-Host "Speak now..."

try {
    $result = $recognizer.Recognize()
    $text = $result.Text
    Write-Host "You said: $text"

   
    switch ($text) {
        "hello" { $speaker.Speak("Hello! How can I assist you?") }
        "how are you" { $speaker.Speak("I am just a terminal, but thanks for asking!") }
        "goodbye" { $speaker.Speak("Goodbye! Have a nice day!") }
        "abc" { $speaker.Speak("xyz") }
        default { $speaker.Speak("I didn't understand that.") }
    }
} catch {
    Write-Host "Could not recognize speech. Try speaking clearly."
}
```


##  To Add Folders/Files

```PowerShell
New-Item -path "C:\users\HP\Desktop\blogsite" -name "siteAssets"-ItemType Directory
```

## Definitely Try This
```
start msedge "https://www.youtube.com/watch?v=dQw4w9WgXcQ"


```
## Warning Messages
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
