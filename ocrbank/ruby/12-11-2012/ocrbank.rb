require_relative 'digit'

class OCRBank

	DIGIT_WIDTH = 3

	# this converts input (as string) into a real number
	def read(input)
		@lines = input.split("\n")		
		@digitCount = @lines[0].length / DIGIT_WIDTH;

		@result = ""		
		(1..@digitCount).each do |digitIndex| 
			@result += (Digit.new getDigitString(@lines, digitIndex)).asInteger.to_s
		end
		@result.to_i
		
	end

	# this method determines if a number is valid 
	def isValidNumber(number)		
		@sum = 0
		(0..8).each do |position| 
			@digit = number.to_s[position].to_i
			@sum += @digit * (9 - position)
		end
		@sum % 11 == 0
	end


	def getDigitString(lines, digitIndex) 
		# digitIndex - 1 because array is zero based
		@start = (digitIndex -1) * DIGIT_WIDTH
		@lines[0][@start,DIGIT_WIDTH] + 
		@lines[1][@start,DIGIT_WIDTH] + 
		@lines[2][@start,DIGIT_WIDTH] +
		@lines[3][@start,DIGIT_WIDTH]
	end

end
