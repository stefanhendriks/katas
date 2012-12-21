require 'rspec'
require 'bowlinggame'

describe BowlingGame do

	context "Scoring after a complete game" do
		
		it "should score 0 for a gutter game" do
			game = BowlingGame.new
			20.times do 
				game.roll 0
			end
			game.score.should == 0
		end

	end

end

