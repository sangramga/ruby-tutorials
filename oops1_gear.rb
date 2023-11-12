class Gear
    private
    attr_reader :chainring, :cog

    public
    def initialize(chainring, cog)
        @chainring = chainring
        @cog = cog
    end

    def ratio()
        return chainring/cog.to_f
    end

end

class Blinkered
    def cog(gear)
        gear.cog
    end
end


gear1 = Gear.new(52, 11)
puts gear1.ratio()

gear2 = Gear.new(30, 27)
puts gear2.ratio()

puts Blinkered.new().cog(gear1)
# `cog': private method `cog' called for 
#<Gear:0x0000000102ca2c38 @chainring=52, @cog=11> 