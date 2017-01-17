def caesar_cipher(string, shift)
  letters = string.split("")
  letters = letters.map do |letter|
    letter = letter.ord + shift

    if letter.between?(65,90) || letter.between?(97,122)
      letter
    elsif letter > 90
      letter = (letter - 90) + 64
    elsif letter > 122
      letter = (letter - 122) + 97
    else
      letter -= shift
    end

    letter.chr
  end

  puts letters.join
end

caesar_cipher("What a string!", 5)

# Relevant ASCII Values:
# A-Z = 65-90
# a-z = 97-122

#.chr() => Converts ASCII number to character
#.ord() => Converts character to ASCII number