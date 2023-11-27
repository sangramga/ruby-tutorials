# Creation
users = ["Alice", "Sam", 1235, ["John", "Doe"]]
p users
arr = Array.new(3, 'RUBY') #=> ["RUBY", "RUBY", "RUBY"]
p arr

# Multi-dimensional array
arr3d = Array.new(2){ Array.new(3) {Array.new(4)}}
p arr3d.nil?
p arr3d.empty?
arr3d[0][1] = [1, -1, 2, 4]
arr3d[1][0] = [2,3,4,5]
p arr3d
p "arr3d[0][1].size= #{arr3d[0][1].size}"
p arr3d.length
p arr3d.count

#Identity matrix in Ruby
require 'matrix'
mat1 = Matrix.identity(3)
p mat1

# index
p users[2]

# slicing arrays
p users[1..3]

p users[2...]

p users.last(2)