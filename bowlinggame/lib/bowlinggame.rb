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
		frames.each do |frame|
			frame_score = (@rolls[frame] + @rolls[frame + 1])
			score += frame_score
		end
		score
	end

end

