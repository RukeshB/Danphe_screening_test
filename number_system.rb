# Problem 4:
# Write a function/method in a generic manner such that it can convert from one number system
# to another; consider decimal to octal and binary. This method should take in three arguments as
# indicated below.
# function convert_number(number, from, to)
# Eg:
# Input: convert_number(42, “decimal”, “octal”)
# Output: 52
# Input: convert_number(42, “decimal”, “binary”)
# Output: 101010

def convert_number(number, from, to)
  return to_binary(number, 2) if from == 'decimal' && to == 'binary'

  'invalid'
end

# method to convert number into binary
def to_binary(number, base)
  result = ''
  while true
    if number < base
      result += number.to_s
      break
    end
    rem = number % base
    number /= base
    result += rem.to_s
  end
  result.reverse
end

puts convert_number(12, 'decimal', 'binary')
