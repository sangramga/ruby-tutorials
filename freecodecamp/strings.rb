phrase = "  \t Learning Ruby "
puts phrase
puts phrase.strip
phrase = phrase.strip

# is include
puts phrase.include? "earn"

puts "-"*60

# String slicing from strings by index
puts phrase[-1]
puts phrase[0,5] # 5 is length of slice
puts phrase[5,phrase.length]

# Slice using range
puts phrase[0..4] # Output: Learn
puts phrase[0..99] # Output: Learning Ruby

puts "-"*60
# String are modifiable (mutable) Unlike python
phrase[0] = "K"
phrase[9, 13] = "Bash"
puts phrase

# Find starting Index of a substring/regex
puts phrase.index("n")
puts phrase.index("n", offset=5)

puts "-"*60

#chomp like strip but only for end of string and return copy
phrase = "\tLearning Ruby\n"
puts phrase.chomp()
# In place chomp
puts phrase.chomp! "Ruby\n"
puts phrase

#Variable interpolation
name = "Sangram"
number = 23
puts "Hello #{name} #{number}"

puts "-"*60
# Concatenate

# With space
phrase = "Learning" " Ruby"
# Using +
phrase = phrase + 23.to_s
puts phrase + name
# Using .concat
puts phrase.concat(name).concat(phrase)
# Using <<
puts phrase << " more string"

puts "-"*60
# Freeze for immutable strings
greet = phrase + name
# Can be modified
puts greet<<" concatenated"

greet.freeze

# Cannot be modified

# puts greet[0,5] = "abcde"
# puts greet<<" trying again"

puts "-"*60

# String comparison 

# create some strings
str1 = "Hello"
str2 = "heLLO"
str3 = "edpresso"
str4 = "EDPRESSO"

# compare strings case INsensitive
a = str1.casecmp(str2)#str1 == str2 returns 0
b = str3.casecmp(str4) #str3 == str4 returns 0
c = str1.casecmp(str4) #str1 > str4 returns 1
d = str4.casecmp(str1) #str4 < str1 returns -1

# print out returned values
puts a
puts b
puts c
puts d

# case sensitive
puts "ttT".eql? "ttt"
puts name == "Sangram"


puts "-"*60
# Split string into array
array1 = phrase.split
puts array1[0]

numbers = "one,two,three,four,five".split(",")
puts numbers[-1]