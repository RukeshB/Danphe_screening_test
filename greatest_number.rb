# Problem 1:
# Given three numbers X, Y & Z. write a function/method that finds the greatest among the
# numbers.

def find_greatest(num1, num2, num3)
  #   create array contaning there parameters as an element of array
  #   then find greatest number from array using max method
  [num1, num2, num3].max
end

puts "greatest number : #{find_greatest(12, 5, 55)}"
puts "greatest number : #{find_greatest(10, 15.5, 15)}"
