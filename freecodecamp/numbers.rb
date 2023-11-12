num = 23.45
puts Math.sqrt(num)
puts Math.log10(100)

# Math constants
puts Math::PI
puts Math.log(Math::E)

# Integer division
puts 100/3

# Float division
puts 100/3.0

# Modulus remainder operator
puts 6.25 % 2.5

# Calculator
puts "Enter two numbers"

# chomp removes newline character and to_f converts str to float
num1 = gets.chomp.to_f
num2 = gets.chomp.to_f

puts num1 + num2