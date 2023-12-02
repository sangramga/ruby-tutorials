#!/usr/bin/env ruby
module Palindrome

    def self.palindrome?(input_string)
        # This is Module instance 
        input_string == input_string.downcase.reverse
    end

    def palindrome_include?(input_string)
        # This is a mixin. Can be used in classes with include statement
        input_string == input_string.downcase.reverse
    end

end
