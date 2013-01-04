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
			frame_window = create_frame(roll_index) 
			if frame_window.strike? # this hides the fact that it is the first roll in a frame 
				score += 10
				next_frame = create_frame(roll_index + 1)
				score += next_frame.score?
				roll_index += 1
				next
			end

			if frame_window.spare?
				score += 10
				score += @rolls[roll_index + 2]
				roll_index += 2
			else
				score += frame_window.score?
				roll_index += 2 # can't we do better than this?
			end
		end

		score
	end

	def create_frame(roll_index)
		Frame.new(@rolls[roll_index], @rolls[roll_index + 1])
	end

end

class Frame
	attr_reader :first_roll, :second_roll
	
	def initialize(first_roll, second_roll)
		@first_roll = first_roll
		@second_roll = second_roll
	end
	
	def strike?
			@first_roll == 10
	end

	def spare?
		score? == 10
	end

	def score?
			@first_roll + @second_roll
	end
end
