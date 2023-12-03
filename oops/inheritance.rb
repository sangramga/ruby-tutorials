#!/usr/bin/env ruby

class Parent
    attr_accessor :name
    def initialize(name)
        puts "Initialize in Parent class"
        @name = name
    end

    def say_hi
        puts "Hi I am #{@name} and I am Parent"
    end

    def self.greet
        puts "Parent Class: self.greet Class method"
    end

end

puts "Parent.ancestors = #{Parent.ancestors}"
papa = Parent.new("John")
p papa
p papa.name


puts "Child Inherited from Parent".center(40, "-")

class Child < Parent #subclass/child class/derived class

    # initialize inherited from parent class
    
    def say_hi
        puts "Hi I am #{@name} Child Class"

    end

end

puts "Child.ancestors = #{Child.ancestors}"
josh = Child.new("Steve")
p josh
p josh.name
puts "Child.greet".center(40, "-")
p Child.greet