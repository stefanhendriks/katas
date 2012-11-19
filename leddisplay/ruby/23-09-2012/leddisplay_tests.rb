require "test/unit"
require './leddisplay.rb'

class LedDisplayTest < Test::Unit::TestCase

    #      _   _
	#   |  _|  _|
	#   | |_   _|
	def test_should_convert_zero
		@d = LedDisplay.new
		@result = @d.convert 0
		assert_equal " _ \n| |\n|_|", @result
	end

	def test_should_convert_one
		@d = LedDisplay.new
		@result = @d.convert 1
		assert_equal "   \n  |\n  |", @result
	end

	def test_should_convert_two
		@d = LedDisplay.new
		@result = @d.convert 2
		assert_equal " _ \n _|\n|_ ", @result
	end

	def test_should_do_something
		@d = LedDisplay.new
		@result = @d.convert 3
		assert_equals "bla", @result
	end

	def test_should_convert_three
		@d = LedDisplay.new
		@result = @d.convert 3
		assert_equal " _ \n _|\n _|", @result
	end

	def test_should_convert_four
		@d = LedDisplay.new
		@result = @d.convert 4
		assert_equal "   \n|_|\n  |", @result
	end

	def test_should_convert_five
		@d = LedDisplay.new
		@result = @d.convert 5
		assert_equal " _ \n|_ \n _|", @result
	end
	
	def test_should_convert_six
		@d = LedDisplay.new
		@result = @d.convert 6
		assert_equal " _ \n|_ \n|_|", @result
	end

	def test_should_convert_seven
		@d = LedDisplay.new
		@result = @d.convert 7
		assert_equal " _ \n  |\n  |", @result
	end

	def test_should_convert_eight
		@d = LedDisplay.new
		@result = @d.convert 8
		assert_equal " _ \n|_|\n|_|", @result
	end

	def test_should_convert_nine
		@d = LedDisplay.new
		@result = @d.convert 9
		assert_equal " _ \n|_|\n _|", @result
	end

	def test_should_convert_two_digit_number
		@d = LedDisplay.new
		@result = @d.convert 12
		assert_equal "     _ \n  |  _|\n  | |_ ", @result
	end

	def test_should_convert_three_digit_number
		@d = LedDisplay.new
		@result = @d.convert 345
		assert_equal " _       _ \n _| |_| |_ \n _|   |  _|", @result
	end

	def test_should_convert_five_digit_number
		@d = LedDisplay.new
		@result = @d.convert 67890
		assert_equal " _   _   _   _   _ \n|_    | |_| |_| | |\n|_|   | |_|  _| |_|", @result
	end
end
