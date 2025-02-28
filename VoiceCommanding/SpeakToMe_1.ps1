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

    # Respond based on recognized text
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
