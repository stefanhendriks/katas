class BowlingGame

	@rolls

	def initialize
		@rolls = []
	end
	
	def roll (pins)
		@rolls << pins
	end

	def score
		score = 0
		frames = 1..10
		
		rollIndex = 0
		frames.each do |frame|
			frame_score = frame_score(rollIndex)
		   if spare?(frame_score)
				score += 10
				score += @rolls[rollIndex + 2]
			elsif
				score += frame_score
			end
			rollIndex += 2
		end

		score
	end

	private

	def spare?(score)
		true if score == 10
	end

	def frame_score(roll_index)
		(@rolls[roll_index] + @rolls[roll_index + 1])
	end

end
