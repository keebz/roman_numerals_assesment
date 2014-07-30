def roman_numeral(number)
  roman_conversion = {"m" => 1000, "cm" => 900, "d" => 500, "cd" => 400, "c" => 100, "Xc" => 90, "l" => 50, "xl" => 40, "x" => 10, "Ix" => 9, "v" => 5, "iv" => 4, "i" => 1}

number_array = []

counter = 1

  while counter == 1 do
    roman_conversion.each do |letter, value|
    if number == 1
      counter == 0
      break

    elsif number == value
      number_array << letter
      counter = 0
      break

    elsif number > value
       number_array << letter
       number = (number - value)
       if number == 1
        number_array << "i"
        counter = 0
      end
       break
    end
  end
end

  result = number_array.join("")
  result

end
puts roman_numeral(3941)
# roman_numeral(20)

