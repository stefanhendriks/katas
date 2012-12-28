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
		
		roll_index = 0
		frames.each do |frame| # within here we enter the context of frames
			first_roll_in_assumed_normal_frame = @rolls[roll_index]
			second_roll_in_assumed_normal_frame = @rolls[roll_index + 1]

			if first_roll_in_assumed_normal_frame == 10 
				score += 10

				first_roll_in_next_frame = @rolls[roll_index + 1]
				second_roll_in_next_frame = @rolls[roll_index + 2]

				score += first_roll_in_next_frame
				score += second_roll_in_next_frame 
				roll_index += 1
			elsif (first_roll_in_assumed_normal_frame + second_roll_in_assumed_normal_frame) == 10 
				score += 10
				score += @rolls[roll_index + 2]
				roll_index += 2
			else
				score += first_roll_in_assumed_normal_frame
				score += second_roll_in_assumed_normal_frame
				roll_index += 2 # can't we do better than this?
			end
		end

		score
	end

end
