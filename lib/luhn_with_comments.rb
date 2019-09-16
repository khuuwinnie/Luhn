module Luhn
    def self.is_valid?(number)
        array = []

        # Step 1 - Break the credit card into its individual digits.
        digits = number.to_s.split("")

        # Step 2 - Start from the right, double every second digit (i.e., digit 2, 4, 6 etc.).
        digits.reverse.each_with_index do |n, i|
            n = n.to_i
            array << n unless (i % 2 == 1) # Add to array unless digit position/index is even.
            if (i % 2 == 1)
                element = n * 2
                # Add doubled digit to array unless greater than 9.
                array << element unless element > 9 
            end 

            # Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
            array << (element-9) if element.to_i > 9
        end
        # Step 4 - Sum the digits.
        # Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.
        array.sum % 10 == 0
    end
end
