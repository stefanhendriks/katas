class FileParser

	attr_reader :ocrbank

	def initialize(ocrbank)
		@ocrbank = ocrbank
	end

	# this should be somewhere else, but for the sake of simplicity we keep it here now
	def readFromFile(filename)
		@file = File.new(filename, "r")
		@input = ""
		while (line = @file.gets)
			@input += line
		end
		@ocrbank.read(@input)
	end

end