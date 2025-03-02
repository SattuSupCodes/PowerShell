Add-Type -AssemblyName System.Speech

$recognizer = New-Object System.Speech.Recognition.SpeechRecognitionEngine
$speaker = New-Object System.Speech.Synthesis.SpeechSynthesizer

$recognizer.SetInputToDefaultAudioDevice()
$recognizer.RecognizerInfo.Culture = [System.Globalization.CultureInfo]::CreateSpecificCulture("en-US")

# Define voice commands
$choices = New-Object System.Speech.Recognition.Choices
$choices.Add("hello")
$choices.Add("how are you")
$choices.Add("goodbye")
$choices.Add("abc")
$choices.Add("what is today's date")
$choices.Add("tell me today's date")
$choices.Add("say today's date")
$choices.Add("give me the date")
$choices.Add("current date")
$choices.Add("today")
$choices.Add("the date")  

$grammarBuilder = New-Object System.Speech.Recognition.GrammarBuilder
$grammarBuilder.Append($choices)
$grammar = New-Object System.Speech.Recognition.Grammar($grammarBuilder)
$recognizer.LoadGrammar($grammar)

# Lower rejection threshold
$recognizer.UpdateRecognizerSetting("CFGConfidenceRejectionThreshold", 50)

# Event handler for recognized speech
$recognizer.add_SpeechRecognized({
    param ($sender, $e)
    $text = $e.Result.Text
    Write-Host "Raw recognized text: '$text'"

    switch ($text) {
        "hello" { $speaker.Speak("Hello! How can I assist you?") }
        "how are you" { $speaker.Speak("I am just a terminal, but thanks for asking!") }
        "abc" { $speaker.Speak("xyz") }
        "what is today's date" { $speaker.Speak("Today's date is " + (Get-Date).ToString("dddd, MMMM d, yyyy")) }
        "tell me today's date" { $speaker.Speak("Today's date is " + (Get-Date).ToString("dddd, MMMM d, yyyy")) }
        "say today's date" { $speaker.Speak("Today's date is " + (Get-Date).ToString("dddd, MMMM d, yyyy")) }
        "give me the date" { $speaker.Speak("Today's date is " + (Get-Date).ToString("dddd, MMMM d, yyyy")) }
        "current date" { $speaker.Speak("Today's date is " + (Get-Date).ToString("dddd, MMMM d, yyyy")) }
        "today" { $speaker.Speak("Today's date is " + (Get-Date).ToString("dddd, MMMM d, yyyy")) }
        "the date" { $speaker.Speak("Today's date is " + (Get-Date).ToString("dddd, MMMM d, yyyy")) }
        "goodbye" { 
            $speaker.Speak("Goodbye! Have a nice day!") 
            $recognizer.RecognizeAsyncStop()
            exit
        }
        default { $speaker.Speak("I didn't understand that.") }
    }
})

# Log unrecognized words
$recognizer.add_SpeechRecognitionRejected({
    param ($sender, $e)
    Write-Host "Unrecognized: " $e.Result.Text
})

Write-Host "Listening... Say 'goodbye' to exit."
$recognizer.RecognizeAsync([System.Speech.Recognition.RecognizeMode]::Multiple)

while ($true) { Start-Sleep -Seconds 1 }
