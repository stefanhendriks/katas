require "test/unit"
require "./fizzbuzz.rb"


class FizzBuzzTest < Test::Unit::TestCase

	def test_returns_zero_lines
		@fb = FizzBuzz.new
		assert_equal [], @fb.do(0)
	end

	def test_returns_1_for_one_line 
		@fb = FizzBuzz.new
		assert_equal ["1"], @fb.do(1)

	end

	def test_returns_1_2_for_two_lines
		@fb = FizzBuzz.new
		assert_equal ["1", "2"], @fb.do(2)
	end
	
	def test_returns_fizz_for_third
		@fb = FizzBuzz.new
		@result = @fb.do(3)
		assert_equal "fizz", @result[2] 
	end

	def test_returns_buzz_for_fifth
		@fb = FizzBuzz.new
		@result = @fb.do(5)
		assert_equal "buzz", @result[4] 
	end

	def test_returns_fizzbuzz_for_fifteen
		@fb = FizzBuzz.new
		@result = @fb.do(15)
		assert_equal "fizzbuzz", @result[14] 
	end
end
