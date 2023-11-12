puts "Count".center(40,"-") 
# Count 

message = "ruby is your best friend"
puts message
puts message.count "y"

puts "String Case".center(40, "-")
puts message.capitalize!
puts message.swapcase!
puts message.upcase!
puts message.downcase!

# Replace global
puts "gsub".center(40, "-")
# replace in place
puts message.gsub! "ruby", "python"
# Multiple Patterns
puts message.gsub(/\b(python|your)\b/,"python"=> "ruby", "your"=>"my")
# Reverse each word after matching only words
puts message.gsub(/\w+/) {|word| word.reverse}

# Split and Join
puts "Split-Join".center(40, "-")

arr = message.split
p arr
p message.split ""

p arr.join "-"

# Date 
puts "date".center(40, "-")
require 'date'
today = Date.today.strftime("%A")
day_of_year = Date.today.yday
week_of_year = Date.today.cweek
puts "Happy #{today}! It is the #{day_of_year} day of the year and #{week_of_year} week of the year"
puts message[6..-1]

