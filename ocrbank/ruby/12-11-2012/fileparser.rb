class FileParser

	attr_reader :ocrbank

	def initialize(ocrbank)
		@ocrbank = ocrbank
	end

	def readFromFile(filename)
		file = File.new(filename, "r")
		input = ""
		while (line = file.gets)
			input += line
		end
		lines = input.split("\n")

		lines.each_slice(4) do | slice |
			@ocrbank.read(slice)
		end
	end

end