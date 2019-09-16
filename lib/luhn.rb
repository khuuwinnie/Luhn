module Luhn
    def self.is_valid?(number)
        array = []
        digits = number.to_s.split("")
        digits.reverse.each_with_index do |n, i|
            n = n.to_i
            array << n unless (i % 2 == 1)
            if (i % 2 == 1)
                element = n * 2
                array << element unless element > 9 
            end 
            array << (element-9) if element.to_i > 9
        end
    array.sum % 10 == 0        
end
