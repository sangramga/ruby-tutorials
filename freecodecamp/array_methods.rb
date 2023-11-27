# sorting
arr = ["a","d","b","c"]
arr.sort!
p arr

# count even numbers
nums = [11, 33, 22, 44]

p nums.count { |x| x%2 == 0 }

# include if element exists
p nums.include?("apple")

# find index if exists else nil
p nums.find_index("apple") #=> nil
p nums.find_index(44) #=>3

# Push, pop
p nums.push(99,77)
p nums.pop
p nums

# Select Male More than 65 years of age
age_sex = [[25,0], [30,1], [67,0], [40,1]]
p age_sex.select { |element| element[0] > 65 && element[1] == 0}

# Reject male more than 65 yrs

p age_sex.reject { |element| element[0] > 65 && element[1] == 0}


p age_sex.shuffle!

# Iterating array
puts ".each and .each_with_index".center(40, "-")
p nums.each { |x| print x**2," "}

nums.each_with_index do |num, idx|
    puts "nums[#{idx}] = #{num}"
    if idx % 2 == 0
        puts "I am even"
    end
end

# reverse iteration
puts "reverse_each".center(40, "-")
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each { |word| str += "#{word} "}
p str

# Map == collect
puts "Map==collect".center(40, "-")
a = [:foo, "bar", 2, Complex("5+3i"), 1/4r]
p a.map { |item| item.class }
p a.collect { |item| item.class }

# Iterate over files
puts "File iterator".center(40, "-")
p Dir.entries(Dir.pwd)
p Dir.glob("*rb")
