class LedDisplay 

	def initialize
		@numbers = [
			[" _ ", 
			 "| |", 
			 "|_|"], 
			["   ", 
			 "  |",
			 "  |"], 
			[" _ ", 
			 " _|", 
			 "|_ "], 
			[" _ ",
			 " _|",
			 " _|"], 
			["   ",
			 "|_|",
			 "  |"], 
			[" _ ",
			 "|_ ",
			 " _|"], 
			[" _ ",
			 "|_ ",
			 "|_|"], 
			[" _ ",
			 "  |",
			 "  |"], 
			[" _ ",
			 "|_|",
			 "|_|"], 
			[" _ ",
			 "|_|",
			 " _|"]]
	end

	def convert(number)
		result = []
		(0..2).each do |lineNr|
			digits = number.to_s.split('').map { |digit| digit.to_i }
			line = []
			digits.each do |digit|
				line << @numbers[digit][lineNr]
			end
			result << line.join(" ")
		end
		return result.join("\n")
	end

end