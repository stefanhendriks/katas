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
			frame_score = (@rolls[rollIndex] + @rolls[rollIndex + 1])
		   if frame_score == 10
				score += 10
				score += @rolls[rollIndex + 2]
			elsif
				score += frame_score
			end
			rollIndex += 2
		end
		score
	end

end

