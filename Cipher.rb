

def caesar_cipher(string, input = 0)
  alphabet = [*'a'..'z', *'A'..'Z']
  rotator = Hash[alphabet.zip(alphabet.rotate(input))]
  result = string.chars.map { |char| rotator.fetch(char, " ") }
  result.join("")
end

puts caesar_cipher("hEllo", 2)