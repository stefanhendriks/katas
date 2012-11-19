class OCRBank

	DIGIT_WIDTH = 3

	# this should be somewhere else, but for the sake of simplicity we keep it here now
	def readFromFile(filename)
		@file = File.new(filename, "r")
		@input = ""
		while (line = @file.gets)
			@input += line
		end
		read(@input)
	end

	# this converts input (as string) into a real number
	def read(input)
		@lines = input.split("\n")		
		@digitCount = @lines[0].length / DIGIT_WIDTH;

		@result = ""		
		(1..@digitCount).each do |digitIndex| 
			@result += readDigit(getDigitString(@lines, digitIndex)).to_s
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
