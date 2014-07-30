def roman_numeral(number)
	roman_conversion = {"m" => 1000, "cm" => 900, "d" => 500, "cd" => 400, "c" => 100, "xc" => 90, "l" => 50, "xl" => 40, "x" => 10, "ix" => 9, "v" => 5, "iv" => 4, "i" => 1}

number_array = []

  roman_conversion.each do |letter, value|
  	next_number = (number / value)
    
    if next_number >= 1 
       number_array << letter * next_number
       number = (number - value) 
    end
  end
  result = number_array.join("")
  result	



	# broken_number = number.to_s.split("")
	# numeral = []
	# if roman_conversion.has_key?(number)
	# 	roman_conversion[number]
	# else number > 10 && broken_number[1] == 0
	# 	until broken_number[0].to_i == 0
	# 		roman_conversion.each do |integer, roman|
	# 		if broken_number[0].to_i >= integer
	# 			numeral.push(roman)
	# 			broken_number[0].to_i = broken_number[0]to_i - integer
	# 		end
	# 	end
	# end
	# else
	# 	until number == 0
	# 	roman_conversion.each do |integer, roman|
	# 		if number >= integer
	# 			numeral.push(roman)
	# 			number = number - integer
	# 		end
	# 	end
	# end
	# puts numeral.to_s

end
puts roman_numeral(20)
roman_numeral(20)

