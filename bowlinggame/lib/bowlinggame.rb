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
		10.times do |frame|
			score += @rolls[frame]
			score += @rolls[frame + 1]
		end
		score
	end

end

