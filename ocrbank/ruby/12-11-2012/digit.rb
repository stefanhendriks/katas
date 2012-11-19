class Digit

	attr_reader :input

	def initialize(input)
		@input = input
	end

	def asInteger
		if @input ==
			"   " + 
			"  |" + 
			"  |" +
			"   "
			1
		elsif @input ==
			" _ " + 
			" _|" + 
			"|_ " +
			"   "
			2
		elsif @input ==
			" _ " + 
			" _|" + 
			" _|" +
			"   "
			3
		elsif @input ==
			"   " + 
			"|_|" + 
			"  |" +
			"   "
			4
		elsif @input ==
			" _ " + 
			"|_ " + 
			" _|" +
			"   "
			5
		elsif @input ==
			" _ " + 
			"|_ " + 
			"|_|" +
			"   "
			6
		elsif @input ==
			" _ " + 
			"  |" + 
			"  |" +
			"   "
			7
		elsif @input ==
			" _ " + 
			"|_|" + 
			"|_|" +
			"   "
			8
		elsif @input ==
			" _ " + 
			"|_|" + 
			" _|" +
			"   "
			9
		elsif @input ==
			" _ " + 
			"| |" + 
			"|_|" +
			"   "
			0
		end
	end

end	
