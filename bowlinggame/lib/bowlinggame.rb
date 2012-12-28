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
			frame_score = frame_score(rollIndex) # this is ugly, we dont know if its a spare or strike?
			if @rolls[rollIndex] == 10 # this is ugly
				score += 10
				score += @rolls[rollIndex + 1]
				score += @rolls[rollIndex + 2]
				rollIndex += 1
			elsif spare?(frame_score) # based on total frame score, which is ambigous
				score += 10
				score += @rolls[rollIndex + 2]
				rollIndex += 2
			else
				score += frame_score
				rollIndex += 2 # can't we do better than this?
			end
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
