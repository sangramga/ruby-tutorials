#!/usr/bin/env ruby

# Refer to: https://noraj.gitlab.io/ruby-cheatsheet/cheatsheet/object-oriented-programming/#accessor-methods
class Person

    attr_reader :name
    attr_writer :age
    attr_accessor :nickname

    def initialize(name, age, nickname)
        @name = name
        @age = age
        @nickname = nickname
    end
end

p1 = Person.new("Sangram", 29, "Sangu")
puts p1
puts "p1.name = #{p1.name}"

puts "Trying to set p1.name = Sangram G.".center(40, "-")
begin
    p1.name = "Sangram G."
rescue => error
    puts error.message
end

puts "Setting new nickname".center(40, "-")
p1.nickname = "SG"
puts "Changed Nickname #{p1.nickname}"

