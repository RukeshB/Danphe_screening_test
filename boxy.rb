# Problem 5:
# Write a method - let's call it boxy(n) - which produces output in STDOUT as shown below.
# Example:
# boxy(3)
# Output:
#  ▁ ▁ ▁ 
# ▁▁▁▁▁▁▁
# |1|2|3|
# ▔▔▔▔▔▔▔
#  ▔ ▔ ▔ 

def boxy(n)
  result = ''
  upper_dash = ''
  lower_dash = ''
  upper_line = ''
  lower_line = ''
  n.times do |index|
    if index.zero?
      result += '|'
      upper_dash += ' '
      lower_dash += ' '
      upper_line += "\u2581"
      lower_line += "\u2594"
    end
    result += "#{index + 1}|"
    upper_dash += "\u2581 "
    lower_dash += "\u2594 "
    upper_line += "\u2581\u2581"
    lower_line += "\u2594\u2594"
  end
  puts upper_dash
  puts upper_line
  puts result
  puts lower_line
  puts lower_dash
end

boxy(3)
