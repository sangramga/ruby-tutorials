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
p 25.divmod 3

# GCD, LCM, Factorization
puts "GCD,LCM, Prime Factorization".center(40, "-")
p 36.gcd(60)
p 75.lcm(30)

require 'prime'
p Prime.prime_division(36)
p Prime.prime? 97
p 36.prime_division
# Rational numbers
puts "Rational Numbers".center(40, "-")
p 1/3.0

p Rational(5,4)
p 1/3r

p 1.5.to_r

p 6.25.rationalize
# Ruby not smart enough to understand IRrational numbers
p "Irration Pi = " + Math::PI.to_s
p "rational Pi=" 
p Math::PI.rationalize

# Complex numbers
puts "Complex Numbers".center(40, "-")
p Complex('1+2i')
p Complex(2,1)
p Complex(2,3) + Complex(1,2) + Math::PI



# Bigdecimal
puts "BigDecimal".center(40, "-")
require 'bigdecimal'
require 'bigdecimal/util'
p (1.2 - 1.0) == 0.2 #=> false
p BigDecimal("1.2") + BigDecimal("1.0") == BigDecimal("0.2") #=> true
p 1/3.to_d
p BigDecimal(Math::PI, digits=7)
p BigDecimal("1.0")/BigDecimal("0.0") #=> Infinity
p BigDecimal("0") / BigDecimal("0") #=> NaN
p -BigDecimal(5)
p "0.5e1".to_f

# Convert to array
pi = Math::PI * 10**5
p pi.to_i.digits.reverse!
# Calculator
puts "Calculator".center(40, "-")
# puts "Enter two numbers"

# # chomp removes newline character and to_f converts str to float
# num1 = gets.chomp.to_f
# num2 = gets.chomp.to_f

# puts num1 + num2