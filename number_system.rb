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

# method to convert number into another number system
def convert_number(number, from, to)
  case [from, to]
  when %w[decimal binary]
    decimal_to_other(number, 2)
  when %w[decimal hex]
    decimal_to_other(number, 16)
  when %w[decimal octal]
    decimal_to_other(number, 8)
  when %w[binary octal]
    decimal_number = other_to_decimal(number, 2)
    decimal_to_other(decimal_number, 8)
  when %w[binary hex]
    decimal_number = other_to_decimal(number, 2)
    decimal_to_other(decimal_number, 16)
  when %w[octal decimal]
    other_to_decimal(number, 8)
  when %w[octal binary]
    decimal_number = other_to_decimal(number, 8)
    decimal_to_other(decimal_number, 2)
  when %w[octal hex]
    decimal_number = other_to_decimal(number, 8)
    decimal_to_other(decimal_number, 16)
  when %w[binary decimal]
    other_to_decimal(number, 2)
  when %w[hex decimal]
    other_to_decimal(number, 16)
  when %w[hex binary]
    decimal_number = other_to_decimal(number, 16)
    decimal_to_other(decimal_number, 2)
  when %w[hex octal]
    decimal_number = other_to_decimal(number, 16)
    decimal_to_other(decimal_number, 8)
  else
    'invalid'
  end
end

# method to convert number into decimal
def other_to_decimal(number, base)
  numbers = if base == 16
              number.to_s.chars.map { |element| hex_alpha_notation(element) }.reverse
            else
              number.to_s.reverse.chars
            end
  result = 0
  numbers.each_with_index do |num, index|
    result += num.to_i * (base**index)
  end
  result
end

# method to convert decimal number into another number system
def decimal_to_other(number, base)
  result = ''
  while true
    if number < base
      result += if base == 16
                  hex_alpha_notation(number)
                else
                  number.to_s
                end
      break
    end
    rem = number % base
    number /= base
    result += if base == 16
                hex_alpha_notation(rem)
              else
                rem.to_s
              end
  end
  result.reverse
end

# add method that convert hex number to Alphabatic notation
def hex_alpha_notation(input)
  input = input.to_s
  conversions = {
    '10' => 'A',
    '11' => 'B',
    '12' => 'C',
    '13' => 'D',
    '14' => 'E',
    '15' => 'F',
    'A' => '10',
    'B' => '11',
    'C' => '12',
    'D' => '13',
    'E' => '14',
    'F' => '15'
  }

  conversions[input] || input
end

puts "decimal 42 = octal #{convert_number(42, 'decimal', 'octal')}"
puts "decimal 42 = binary #{convert_number(42, 'decimal', 'binary')}"
puts "decimal 42 = hex #{convert_number(42, 'decimal', 'hex')}"
puts "octal 12 = binary #{convert_number(12, 'octal', 'binary')}"
puts "octal 12 = decimal #{convert_number(12, 'octal', 'decimal')}"
puts "octal 12 = hex #{convert_number(12, 'octal', 'hex')}"
puts "binary 1100 = decimal #{convert_number(1100, 'binary', 'decimal')}"
puts "binary 1100 = octal #{convert_number(1100, 'binary', 'octal')}"
puts "binary 1100 = hex #{convert_number(1100, 'binary', 'hex')}"
puts "hex C5 = decimal #{convert_number('C5', 'hex', 'decimal')}"
puts "hex C5 = binary #{convert_number('C5', 'hex', 'binary')}"
puts "hex C5 = octal #{convert_number('C5', 'hex', 'octal')}"
