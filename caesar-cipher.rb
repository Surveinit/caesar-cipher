def caesar_cipher(words, shift)
  alphabets = ('a'..'z').to_a
  words = words.downcase.split("") 

  words.map do |char|
    if alphabets.include?(char)
      new_index = (alphabets.index(char)-shift) % 26
      alphabets[new_index]
    else
      char
    end

  end.join

end


puts <<~HEREDOC
  Welcome to the CAESAR CIPHER Encryption Tool!
  This program allows you to Encrypt or Decrypt a message.
  --------------
  Instructions:
  1. Enter the string you want to encrypt when prompted.
  2. Enter a shift value (a number) that will be used to shift each letter in your message.
  3. Remember the shift value, as you will need it to decrypt the message later.
  --------------
HEREDOC

puts "> Enter string to encrypt."
string_from_user = gets.chomp

puts "> Enter SHIFT, Decrypt NOTE: Add (-) before the shift to decypher the message."
shift_from_user = gets.to_i

p caesar_cipher(string_from_user, shift_from_user)