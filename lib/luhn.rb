module Luhn
  def self.is_valid?(number)
    #evaluates a number to determine if valid credit card number
    checksum = 0
    double = false
    str = number.to_s.split('').reverse
    test = ''
    str.each do |char|
      digit = char.to_i
      if double == true
        digit = digit * 2
        if digit >= 10
          digit = digit - 9
        end
        double = false
      else
        double = true
      end
      checksum += digit
      test += digit.to_s
    end
    if checksum % 10 == 0
      return true
    else
      return false
    end
  end
end