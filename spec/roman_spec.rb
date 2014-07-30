require ('rspec')
require ('roman')

describe ('roman_numeral') do
	it("takes a number 1 and returns its roman numeral") do
		roman_numeral(1).should(eq("i"))
	end
	it("takes a number between 1 and 3 and returns its roman numeral") do
		roman_numeral(3).should(eq("iii"))
	end
	it("takes a number between 1 and 9 and returns its roman numeral") do
		roman_numeral(9).should(eq("ix"))
	end
	it("takes a double digit number ending in zero and returns its roman numeral") do
		roman_numeral(20).should(eq("ix"))
	end
end