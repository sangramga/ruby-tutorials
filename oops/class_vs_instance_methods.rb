#!/usr/bin/env ruby

class Person

    @@num_objects=0 #=> class variable
    attr_accessor :name
    def initialize(name)
        @name = name #=> instance variable
        @@num_objects = @@num_objects + 1
    end

    def self.num_objects #=> class method
        @@num_objects
    end

end

p1 = Person.new("Sam")
puts "#{Person}"
puts "#{p1}, #{p1.name}"
puts "Person.num_objects = #{Person.num_objects}"
p2 = Person.new("Alice")
puts "#{p2}, #{p2.name}"
puts "Person.num_objects = #{Person.num_objects}"

