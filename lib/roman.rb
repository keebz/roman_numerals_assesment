def roman_numeral(number)
	roman_conversion = {
		1000 => "m", 900 => "cm", 500 => "4", 400 => "cd",
		100 => "c", 90 => "xc", 50 => "l", 40 => "xl",
		10 => "x", 9 => "ix", 5 => "v", 4 => "iv",
		1 => "i"
	}
	numeral = []
	if roman_conversion.has_key?(number)
		roman_conversion[number]
	else
		until number == 0
		roman_conversion.each do |integer, roman|
			if number >= integer
				numeral.push(roman)
				number = number - integer
			end
		end
	end
	numeral.to_s
end
end
puts roman_numeral(9)
roman_numeral(5)
