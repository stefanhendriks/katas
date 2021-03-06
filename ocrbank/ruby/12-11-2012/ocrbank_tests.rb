require "test/unit"
require "./ocrbank.rb"

class OCRBankTest < Test::Unit::TestCase

	def test_is_valid_code_with_valid_checksum
		@b = OCRBank.new
		assert_equal true, @b.isValidNumber(345882865)
	end

	def test_is_not_valid_checksum1
		@b = OCRBank.new
		assert_equal false, @b.isValidNumber(100000000)
	end

	def test_is_not_valid_checksum2
		@b = OCRBank.new
		assert_equal false, @b.isValidNumber(100000001)
	end

	def test_should_read_11
		@b = OCRBank.new
		@result = @b.read(["      ", 
						   "  |  |", 
						   "  |  |",
						   "      "])

		assert_equal 11, @result
	end

	def test_should_read_12
		@b = OCRBank.new
		@result = @b.read([
			"    _ ", 
			"  | _|", 
			"  ||_ ",
			"      "])

		assert_equal 12, @result
	end	

	def test_should_read_1234567890
		@b = OCRBank.new
		@result = @b.read([
			"    _  _     _  _  _  _  _  _ \n", 
			"  | _| _||_||_ |_   ||_||_|| |\n", 
			"  ||_  _|  | _||_|  ||_| _||_|\n", 
			"                              "])

		assert_equal 1234567890, @result
	end	
end
