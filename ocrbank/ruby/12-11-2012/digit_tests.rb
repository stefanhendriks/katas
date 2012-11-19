require "test/unit"
require_relative 'digit' 

class DigitTest < Test::Unit::TestCase

	def test_should_read_1
		@b = Digit.new(
			"   " + 
			"  |" + 
			"  |" +
			"   ")
		assert_equal 1, @b.asInteger
	end
	
	def test_should_read_2
		@b = Digit.new(
			" _ " + 
			" _|" + 
			"|_ " +
			"   ")

		assert_equal 2, @b.asInteger
	end

	def test_should_read_3
		@b = Digit.new(
			" _ " + 
			" _|" + 
			" _|" +
			"   ")

		assert_equal 3, @b.asInteger
	end


	def test_should_read_4
		@b = Digit.new(
			"   " + 
			"|_|" + 
			"  |" +
			"   ")

		assert_equal 4, @b.asInteger
	end


	def test_should_read_5
		@b = Digit.new(
			" _ " + 
			"|_ " + 
			" _|" +
			"   ")

		assert_equal 5, @b.asInteger
	end


	def test_should_read_6
		@b = Digit.new(
			" _ " + 
			"|_ " + 
			"|_|" +
			"   ")

		assert_equal 6, @b.asInteger
	end


	def test_should_read_7
		@b = Digit.new(
			" _ " + 
			"  |" + 
			"  |" +
			"   ")

		assert_equal 7, @b.asInteger
	end


	def test_should_read_8
		@b = Digit.new(
			" _ " + 
			"|_|" + 
			"|_|" +
			"   ")

		assert_equal 8, @b.asInteger
	end


	def test_should_read_9
		@b = Digit.new(
			" _ " + 
			"|_|" + 
			" _|" +
			"   ")

		assert_equal 9, @b.asInteger
	end


	def test_should_read_0
		@b = Digit.new(
			" _ " + 
			"| |" + 
			"|_|" +
			"   ")

		assert_equal 0, @b.asInteger
	end


end
