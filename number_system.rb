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

  return to_decimal(number, 2) if from == 'binary' && to == 'decimal'

  'invalid'
end

# method to convert number into decimal
def to_decimal(number, base)
  numbers = number.to_s.reverse
  result = 0
  numbers.chars.each_with_index do |num, index|
    result += num.to_i * (base**index)
  end
  result
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

# convert_number(42, 'decimal', 'octal')
puts convert_number(12, 'decimal', 'binary')
puts convert_number(1100, 'binary', 'decimal')
