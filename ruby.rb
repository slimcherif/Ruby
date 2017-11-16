
def chiffre_de_cesar(string, shift = 5)
 alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('!'..'?')
  symbol     = Hash[alphabet.zip(alphabet.rotate(shift))]

   encrypter = symbol.merge(non_caps.merge(caps))
 
  string.chars.map { |c| encrypter.fetch(c, c) }
end

text = gets.chomp

p chiffre_de_cesar("slim").join