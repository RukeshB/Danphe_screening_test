# Problem 2:
# Write a program that prints the number from 1 to 100. But for multiples of three print “Fizz”
# instead of the number & for the multiples of five print “Buzz”. However, for numbers which are
# multiples of both three and five print “ FizzBuzz” instead.

# method to check multiples of three and five and convert number into 'Fizz', 'Buzz' or 'FizzBuzz'
def convert_number(number)
  if (number % 3).zero? && (number % 5).zero?
    'FizzBuzz'
  elsif (number % 3).zero?
    'Fizz'
  elsif (number % 5).zero?
    'Buzz'
  else
    number
  end
end

output = (1..100).map { |number| convert_number number }

puts output
