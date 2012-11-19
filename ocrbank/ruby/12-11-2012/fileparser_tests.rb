require "test/unit"
require 'mocha'
require_relative "fileparser"

class FileParserTest < Test::Unit::TestCase

	def test_should_read_1234567890_from_file
		ocrbank = mock('ocrbank');
		ocrbank.expects(:read).with([
			"    _  _     _  _  _  _  _  _ ",
			"  | _| _||_||_ |_   ||_||_|| |",
			"  ||_  _|  | _||_|  ||_| _||_|",
			"                              "]).once()

		@parser = FileParser.new ocrbank
		@result = @parser.readFromFile "one_entry.txt"
		
	end

end