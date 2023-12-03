class Family
    
    attr_accessor :family_name
    def initialize(family_name)
        @family_name = family_name
    end
end

class Person < Family

    attr_accessor :name
    def initialize(name, family_name)
        super(family_name)
        @name = name
    end

    def to_s
        "Name = #{@name}, family_name = #{@family_name}"
    end
end

p1 = Person.new("John", "Smith")
puts p1
puts "Person.ancestors = #{Person.ancestors}"    