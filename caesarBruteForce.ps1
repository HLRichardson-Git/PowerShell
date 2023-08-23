# Encrypted message using the Caesar cipher
$encryptedMessage = "Aopz pz h alza av zll pm P jhu jvkl vy uva."

# Convert the encrypted message to lowercase
$encryptedMessage = $encryptedMessage.ToLower()

# Define the alphabet for reference
$alphabet = "abcdefghijklmnopqrstuvwxyz"

# Convert the string into an array of characters
$charArray = $encryptedMessage -split ''

# Loop through all possible shift values
for ($shift = 1; $shift -lt 26; $shift++) {
    $decryptedText = ""

    # Decrypt the message using the current shift
    foreach ($char in $charArray) {
        if ($char -ge 'a' -and $char -le 'z') {
            $newIndex = ($alphabet.IndexOf($char) - $shift) % 26
            if ($newIndex -lt 0) {
                $newIndex += 26
            }
            $decryptedText += $alphabet[$newIndex]
        } else {
            $decryptedText += $char
        }
    }

    # Display the decrypted text along with the shift value
    Write-Host ("Shift {0}: {1}" -f $shift, $decryptedText)
}
