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

# Convert 2d array to hash map
puts "array-to-hash".center(40, "-")
a = [["a",1], ["d",4], ["h",8]]
p a
p a.to_h

arr = ["India", "Australia", "USA"]
p arr
p arr.to_h { |country| [country, country[..1].downcase()]}

puts "take".center(40, "-")
p a
p a.take(1)

puts "Transpose".center(40, "-")
p a
p a.transpose

puts "uniq".center(40, "-")
a = [4, 1, 2, 1, 0, 2]
p a.uniq

arr = ["India", "indIA", "JAPAN", "jApAn", "China"]
p arr.uniq { |element| element.downcase}

puts "array slicing".center(40, "-")
a = ["abc", :sym, 2.45, 1/4r]
p a.values_at(0, 2..3, -4, -3)

puts "product".center(40, '-')
p nums
a1 = ["a","b"]
p a1
puts "Product = #{nums.product(a1)}"

puts "Permutations-Combinations".center(40, "-")
p nums
puts "Permutation with repeat"
nums.repeated_permutation(2) {|permutation| p permutation}
puts "Permutations no repeat"
nums.permutation(2) {|permutation| p permutation}

puts "zip multiple arrays".center(40, "-")
a = [:a0, :a1, :a2, :a3]
b = [:b0, :b1, :b2]
c = [:c0, :c1]
p a
p b
p c
d = a.zip(b, c)
p "zip = #{d}"


