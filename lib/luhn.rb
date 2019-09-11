module Luhn
    def self.is_valid?(number)
        array = []

        digits = number.to_s.split("")

        digits.reverse.each_with_index do |n, i|
            array << n.to_i unless (i % 2 == 1)
            if (i % 2 == 1)
                element = n.to_i * 2
                array << element unless element > 9 
            end 

            if element.to_i > 9
                array << (element-9)
            end
        end
        
        if array.sum % 10 == 0
            return true
        else
            return false
        end
    end
end



