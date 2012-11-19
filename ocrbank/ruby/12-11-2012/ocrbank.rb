class OCRBank

	DIGIT_WIDTH = 3

	# this should be somewhere else, but for the sake of simplicity we keep it here now
	def readFromFile(filename)
		@file = File.new(filename, "r")
		@input =""
		while (line = @file.gets)
			@input += line
		end
		read(@input)
	end

	def read(input)
		@lines = input.split("\n")		
		@digitCount = @lines[0].length / DIGIT_WIDTH;

		@result = ""		
		(1..@digitCount).each do |digitIndex| 
			@result += readDigit(getDigitString(@lines, digitIndex)).to_s
		end
		@result.to_i
		
	end

	def isValidNumber(number)		
		@sum = 0
		(0..8).each do |position| 
			@digit = number.to_s[position].to_i
			@sum += @digit * (9 - position)
		end
		@sum % 11 == 0
	end


	def getDigitString(lines, digitIndex) 
		@start = (digitIndex -1) * DIGIT_WIDTH
		@lines[0][@start,DIGIT_WIDTH] + 
		@lines[1][@start,DIGIT_WIDTH] + 
		@lines[2][@start,DIGIT_WIDTH] +
		@lines[3][@start,DIGIT_WIDTH]
	end

	def readDigit(input)
		if input ==
			"   " + 
			"  |" + 
			"  |" +
			"   "
			1
		elsif input ==
			" _ " + 
			" _|" + 
			"|_ " +
			"   "
			2
		elsif input ==
			" _ " + 
			" _|" + 
			" _|" +
			"   "
			3
		elsif input ==
			"   " + 
			"|_|" + 
			"  |" +
			"   "
			4
		elsif input ==
			" _ " + 
			"|_ " + 
			" _|" +
			"   "
			5
		elsif input ==
			" _ " + 
			"|_ " + 
			"|_|" +
			"   "
			6
		elsif input ==
			" _ " + 
			"  |" + 
			"  |" +
			"   "
			7
		elsif input ==
			" _ " + 
			"|_|" + 
			"|_|" +
			"   "
			8
		elsif input ==
			" _ " + 
			"|_|" + 
			" _|" +
			"   "
			9
		elsif input ==
			" _ " + 
			"| |" + 
			"|_|" +
			"   "
			0
		end
	end

end
