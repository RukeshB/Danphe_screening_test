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
  lower_block = "\u2581"
  upper_block = "\u2594"
  upper_dash = ''
  lower_dash = ''
  upper_line = ''
  lower_line = ''
  n.times do |index|
    if index.zero?
      result += '|'
      upper_dash += ' '
      lower_dash += ' '
      upper_line += lower_block
      lower_line += upper_block
    end
    result += "#{index + 1}|"
    if (index + 1) < 10
      upper_dash += "#{lower_block} "
      lower_dash += "#{upper_block} "
      upper_line += "#{lower_block}#{lower_block}"
      lower_line += "#{upper_block}#{upper_block}"
    elsif (index + 1) >= 10
      upper_dash += "#{lower_block}#{lower_block} "
      lower_dash += "#{upper_block}#{upper_block} "
      upper_line += "#{lower_block}#{lower_block}#{lower_block}"
      lower_line += "#{upper_block}#{upper_block}#{upper_block}"
    end
  end
  puts upper_dash
  puts upper_line
  puts result
  puts lower_line
  puts lower_dash
end

boxy(15)
