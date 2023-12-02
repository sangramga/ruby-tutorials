puts "Define/Initialize hash".center(40, "-")

ext = {:python => ".py", :ruby => ".rb", :javascript => ".js"}
p ext

ext1 = {python: ".py", ruby: ".rb", javascript: ".js"}
p ext1
p ext == ext1 #=> true

puts " ext[:python] = #{ext[:python]}"


key0 = 0
key1 = 100

h = {key0:, key1:}
p h

# Initialize new Hash
puts "Hash.new".center(40, "-")
h = Hash.new(false)
p h
p h.class
puts "h.default value  is #{h.default} \nempty hash h[:mykey] = #{h[:mykey]}"

h1 = Hash[]
p h1
p h == h1

h2 = {}
p h == h2

puts "Hash[] operator".center(40, "-")
arr = [:key1, 0, :newkey, -1]
p arr
p Hash[:key1, 0, :newkey, -1]

puts "insert key/value".center(40, "-")
ext[:java] = ".java"
p ext
puts "Deleting java #{ext.delete(:java)}"
p ext

puts "key in hash".center(40, "-")
p "ext.include?(:golang) = #{ext.include?(:golang)}"
p "ext.has_key?(:python) = #{ext.has_key?(:python)}"
p "ext.key?(:java) = #{ext.key?(:java)}"
p "list of ALL keys ext.keys = #{ext.keys}"


puts "Return first key given value".center(40, "-")
p "ext.key('.js') = #{ext.key('.js')}"

puts "value in hash".center(40, "-")
puts "ext.value?('.py') = #{ext.value?('.py')}"
puts "ext.values_at(:python, :javascript) = #{ext.values_at(:python, :javascript)}"

puts "hash iteration".center(40, "-")
ext.each {|key, value| puts "#{key} : #{value}" }

ext.each_with_index do |key_value_pair, ind|
    puts "ind = #{ind}, key_value_pair = #{key_value_pair}"
end

puts "Merge/Update Hashes".center(40, "-")

priority_hash = {item1: 0, item2: 1}
p_hash1 = {item3: 9, item4: 13}
p_hash2 = {item3: 3, item4: 4}
p priority_hash.merge(p_hash1)

# Merge with adding keys
p Hash.new.merge(p_hash1, p_hash2) {|key, old_value, new_value| old_value + new_value}
