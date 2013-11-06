class Octal
    def initialize(octal)
      @octal = octal.to_s.match(/[^0-7]/) ? 0 : octal
    end

    def to_decimal
      @octal.to_s.reverse.chars.each_with_index.map do |char, index|
        char == 0 ? 0 : (8**index) * char.to_i
      end.reduce(:+)
    end

end