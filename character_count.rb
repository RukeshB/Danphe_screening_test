# Problem 3:
# Loop over a string of arbitrary length, and count the occurrence of each character in the string.
# Note: You can ignore accounting <whitespace>.
# Eg:
# Input: “hello how are you”
# Output: h: 2, e: 2, l: 2, o: 3, : 3, w: 1, a: 1, r: 1, y: 1, u: 1

# method to count the occurrence of each character in the string
def character_count(string)
  char_array = string.chars
  unique_chars = char_array.uniq
  output = ''
  unique_chars.each_with_index do |unique_char, index|
    output += ', ' unless index.zero?
    output += "#{unique_char} : #{char_array.count(unique_char)}"
  end
  output
end

puts character_count('hello how are you')
