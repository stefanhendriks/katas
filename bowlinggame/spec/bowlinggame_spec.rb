require 'rspec'
require 'bowlinggame'

describe BowlingGame do

	context "Scoring after a complete game" do
	
		before (:each) do
			@game = BowlingGame.new
		end

		it "should score 0 for a gutter game" do
			roll 20, 0
			@game.score.should == 0
		end

		it "should score 20 for all ones" do
			roll 20, 1
			@game.score.should == 20
		end

		it "should score 16 for one spare and three" do
			@game.roll 5
			@game.roll 5 # spare
			@game.roll 3
			roll 17, 0
			@game.score.should == 16
		end

	end

	def roll(n, amount) 
		n.times do
			@game.roll amount
		end
	end

end

