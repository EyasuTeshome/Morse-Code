# Create a method to decode a Morse code character, takes a string parameter,
# and return the corresponding character in uppercase
# (e.g. decode_char(".-") returns "A").

## inside the method char_decoder
## 1. Set an object containing the morse symbols with their equivalent character
## 2. return the equivalent character

code_morse = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z', '<delay>' => ' ', '-----' => '0', '.----' => '1', '..---' => '2',
  '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9' }

def char_decoder(char, code)
code[char]
end

# Create a method to decode an entire word in Morse code,
# takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space
# (e.g. decode_word("-- -.--") returns "MY").
# word_decoder

## inside the method
## 0. create an empty string "word"
## 1. split string into arrays by 1 space
## 2. iterate over the array
## 3. for each item, fill the word string with the char_decoder returned value
## 5. return the string
def word_decoder(morse_word, code)
new_word = ''
arr = morse_word.split
arr.each { |x| new_word += char_decoder(x, code) }
puts new_word
end

puts word_decoder('-- -.--', code_morse)

# Create a method to decode the entire message in Morse code,
# takes a string parameter, and return the string representation.
# Every word will be separated by 3 spaces (e.g.)
# string_decoder
def decode_message(message)
message.split('  ').map { |morse_word| word_decoder(morse_word) }.join(' ')
end
puts decode_message('.. .- -- . -.-- .- ... ..-')

## 0. create an empty string
## 1. split string into array by 3 spaces
## 2. iterate over the array
## 3. for each item, fill the empty string with returned value from the method word_decoder
## 4. return the string