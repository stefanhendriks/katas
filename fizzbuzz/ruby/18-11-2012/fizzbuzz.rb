class FizzBuzz
	def do(amount)
		@result = Array.new(amount)

		amount.times do |nr|
			plusOne = nr + 1
			@result[nr] = convert(plusOne) 
		end

		@result
	end

	def convert(number)
			result = ""
			fizzed = false
			if (number % 3 == 0)
				result += "fizz"
				fizzed = true
			end

			if (number % 5 == 0) 
				result += "buzz"
				fizzed = true
			end

			if (fizzed == false)
				result = "#{number}"
			end

			result
	end

end
