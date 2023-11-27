# for loop
puts "for [condition] do ... end".center(40, "-")
for i in (1..5) do
    puts "at #{i}, sqrt = #{Math.sqrt(i)}"
end

# while loop
puts "while [condition] ... end".center(40, "-") 
x = 25
while x >= 0 # exit when this condition is false
    p x
    x = x - 5
end


# until loop
puts "until [condition] ... end".center(40, "-")
var = 5
until var >= 10 do # exit when this condition is true
    puts  "At #{var}, Squared = #{var**2}"
    var = var + 1
end

# loop do
puts "loop do ... if break".center(40, "-")

var = 5
loop do
    puts  "At #{var}, Binary = #{var.to_s(2).rjust(4, '0')}"
    var = var + 1
    if var >= 10
        break
    end
end

# .times loop
puts "Integer.times loop".center(40, "-")
sum = 0
5.times do  |i| 
    sum = sum + i
    puts "at #{i}, sum = #{sum}"
end

puts "Final sum=#{sum}"


# .upto loop
puts "1.upto(10) loop".center(40, "-")
arr = []
1.upto(10) { |i| arr<<i}
p arr
