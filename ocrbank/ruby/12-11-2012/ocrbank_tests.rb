require "test/unit"
require "./ocrbank.rb"

class OCRBankTest < Test::Unit::TestCase

	# still todo: multi-line file reading/results 
	def test_should_read_1234567890_from_file
		@b = OCRBank.new
		@result = @b.readFromFile("one_entry.txt")
		assert_equal 1234567890, @result
	end


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
		@result = @b.read(
			"      \n" + 
			"  |  |\n" + 
			"  |  |\n" +
			"      ")

		assert_equal 11, @result
	end

	def test_should_read_12
		@b = OCRBank.new
		@result = @b.read(
			"    _ \n" + 
			"  | _|\n" + 
			"  ||_ \n" +
			"      ")

		assert_equal 12, @result
	end	

	def test_should_read_1234567890
		@b = OCRBank.new
		@result = @b.read(
			"    _  _     _  _  _  _  _  _ \n" + 
			"  | _| _||_||_ |_   ||_||_|| |\n" + 
			"  ||_  _|  | _||_|  ||_| _||_|\n" + 
			"                              "
				)

		assert_equal 1234567890, @result
	end	
end
