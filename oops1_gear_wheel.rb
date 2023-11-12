class Gear
    private 
    attr_reader :chainring, :cog, :wheel

    public
    def initialize(chainring, cog, wheel=nil)
        @chainring = chainring
        @cog = cog
        @wheel = wheel
    end

    def ratio()
        chainring/cog.to_f
    end


    def gear_inches()
        ratio * wheel.diameter
    end
end

class Wheel
    private
    attr_reader :rim, :tire

    public
    def initialize(rim, tire)
        @rim = rim
        @tire = tire
    end

    def diameter()
        rim + (tire * 2)
    end

    def circumference()
        diameter * Math::PI
    end
end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

gear1 = Gear.new(52, 11, @wheel)
puts gear1.gear_inches

gear2 = Gear.new(52, 11)
puts gear2.ratio