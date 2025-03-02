Add-Type -AssemblyName System.Speech

$recognizer = New-Object System.Speech.Recognition.SpeechRecognitionEngine
$speaker = New-Object System.Speech.Synthesis.SpeechSynthesizer

$recognizer.SetInputToDefaultAudioDevice()

# Define commands
$choices = New-Object System.Speech.Recognition.Choices
$choices.Add("hello")
$choices.Add("how are you")
$choices.Add("goodbye")
$choices.Add("Who are you")
$choices.Add("what is the time")

# Load grammar
$grammarBuilder = New-Object System.Speech.Recognition.GrammarBuilder
$grammarBuilder.Append($choices)
$grammar = New-Object System.Speech.Recognition.Grammar($grammarBuilder)
$recognizer.LoadGrammar($grammar)

Write-Host "Kartos is listening... Say 'goodbye' to exit."

# Continuous listening loop
while ($true) {
    try {
        Write-Host "`nSpeak now..."
        $result = $recognizer.Recognize()

        if ($result -ne $null) {
            $text = $result.Text
            Write-Host "You said: $text"

            # Process commands
            switch ($text) {
                "hello" { $speaker.Speak("Hello, Cutie! How may I assist you?") }
                "how are you" { $speaker.Speak("I am just a terminal, but thanks for asking!") }
                "who are you" { $speaker.Speak("I am Kartos, your terminal speaking. I can perform tasks you command. I'm helpful, and I try to be less sarcastic. But maybe that's just who i am.") }
                "what is the time" { 
                    # Get the current IST time
                    $timeIST = (Get-Date).ToUniversalTime().AddHours(5.5)
                    $formattedTime = $timeIST.ToString("hh:mm tt") # Example: "04:30 PM"
                    $speaker.Speak("The current time is $formattedTime.")
                }
                "goodbye" { 
                    $speaker.Speak("Goodbye! Have a nice day!")
                    break  # Exit loop
                }
                default { $speaker.Speak("I didn't understand that.") }
            }
        }
    } catch {
        Write-Host "Could not recognize speech. Try speaking clearly."
    }
}
