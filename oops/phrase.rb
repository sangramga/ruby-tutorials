require "./palindrome"
class Phrase
    attr_accessor :content
    def initialize(content)
        @content = content
    end
    
    def louder
        @content.upcase
    end

    include Palindrome # will include methods in Palindrome module
end

phrase = Phrase.new("Madam, I'm Adam")
puts phrase.content
puts phrase.louder

puts Palindrome.palindrome?(phrase.content) # Module Method

puts phrase.palindrome_include?(phrase.content) # Module mixin method 

puts phrase.palindrome?(phrase.content) # Error 