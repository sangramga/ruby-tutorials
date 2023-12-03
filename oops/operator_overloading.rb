#!/usr/bin/env ruby

class Point

    attr_accessor :x, :y
    def initialize(x,y)
        @x = x
        @y = y
    end

    def ==(other_obj)
        (@x == other_obj.x) and (@y == other_obj.y)
    end

    def +(other_obj)
        Point.new(@x + other_obj.x, @y + other_obj.y)
    end

    def to_s
        puts "Point (#{x}, #{y})"
    end
end

p1 = Point.new(2,1)
puts p1
p2 = Point.new(3,2)
puts p2

puts "p1 == p2 #{p1 == p2}"
p3 = p1 + p2 
puts "p3 = p1 + p2"
puts p3