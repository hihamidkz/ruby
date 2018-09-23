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
end

