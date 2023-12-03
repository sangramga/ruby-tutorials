#!/usr/bin/env ruby

# Including a module in a class is called a mixin.
module MyModule

    ANSWER = 42

    def say_hi(input)
        puts "say hi to #{input} from say_hi method in MyModule "
    end

end


puts "include to add instance methods".center(40, "-")
# Include MyModule and its methods to Class
class MyClass
    include MyModule

    def initialize(name)
        @class_name = name
    end

    def greet
        say_hi(@class_name) # => From MyModule
    end

    def my_answer
        ANSWER # MyModule ANSWER
    end
end

#=> undefined method `say_hi' for MyClass:Class (NoMethodError)
begin
    MyClass.say_hi("MyClass")
rescue => error
    puts error.message
end

cs101 = MyClass.new("CS101")

# say_hi from MyModule include
cs101.say_hi("CS101 include MyModule")

# Greet using say_hi from MyModule
cs101.greet
p cs101.my_answer

puts "extend to add class methods".center(40, "-")
# extend Room class using MyModule
class Room
    extend MyModule
    
    attr_accessor :room_number

    def initialize(name)
        @room_number = name
    end
end


Room.say_hi("class Room")

room_1a = Room.new("room 1a")

# NoMethodError:  undefined method `say_hi' for #<Room:0x0000000104440480 @room_number="room 1a">
begin
room_1a.say_hi("room 1a")
rescue => error
    puts error.message
end