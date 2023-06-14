# Problem 1:
# Given three numbers X, Y & Z. write a function/method that finds the greatest among the
# numbers.

# method that finds the greatest among the three numbers
def find_greatest_number(num1, num2, num3)
  return 'invalid' if num1.nil? || num2.nil? || num3.nil?

  if num1 >= num2 && num2 >= num3
    num1
  elsif num2 >= num3 && num2 >= num1
    num2
  else
    num3
  end
end

# alternative
def find_greatest(num1, num2, num3)
  return 'invalid' if num1.nil? || num2.nil? || num3.nil?

  #   create array contaning there parameters as an element of array
  #   then find greatest number from array using max method
  [num1, num2, num3].max
end

puts "greatest number : #{find_greatest(12, 55, 55)}"
puts "greatest number : #{find_greatest(10, 15.5, 15)}"
puts "greatest number : #{find_greatest_number(12, 55, 55)}"
puts "greatest number : #{find_greatest_number(10, 15.5, 15)}"
