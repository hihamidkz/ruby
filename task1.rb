puts 'Input degrees'
deg = gets.chomp.to_i

puts 'Input the first scale (C, K, F)'
scale1 = gets.chomp
puts 'Input the second scale (C, K, F)'
scale2 = gets.chomp

class DegConverter
    def initialize(deg, scale1, scale2)
        @deg = deg
        @scale1 = scale1
        @scale2 = scale2
    end

    def convert()
        case @scale1
        when 'C'
            convertC()
        when 'F'
            convertF()
        when 'K'
            convertK()
        else
            "Unknown scale #{@scale1}"
        end
    end

    def convertC()
        case @scale2
        when 'K'
            @deg + 273.15
        when 'F'
            @deg * 1.8 + 32
        else
            "Unknown scale #{@scale2}"
        end
    end

    def convertF()
        case @scale2
        when 'C'
            (@deg - 32) * 5.0 / 9.0
        when 'K'
            (@deg - 32) * 5.0 / 9.0 + 273.15
        else
            "Unknown scale #{@scale2}"
        end
    end

    def convertK()
        case @scale2
        when 'C'
            @deg - 273.15
        when 'F'
            (@deg - 273.15) * 1.8 + 32
        else
            "Unknown scale #{@scale2}"
        end
    end
end

converter = DegConverter.new(deg, scale1, scale2)
puts converter.convert
