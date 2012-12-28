require 'rspec'
require 'bowlinggame'

describe BowlingGame do

	context "Scoring after a complete game" do
	
		before (:each) do
			@game = BowlingGame.new
		end

		it "should score 0 for a gutter game" do
			roll_many 20, 0
			@game.score.should == 0
		end

		it "should score 20 for all ones" do
			roll_many 20, 1
			@game.score.should == 20
		end

		it "should score 16 for one spare and three" do
			roll_spare
			roll_once 3
			roll_many 17, 0
			@game.score.should == 16
		end

		it "should score 25 for four times 5 and all zeroes" do
			roll_many 4, 5
			roll_many 16, 0
			@game.score.should == 25 
		end

		it "should score 28 for one strike and 3 and 9 and all zeroes" do
			roll_once 10 #strike
			roll_once 3
			roll_once 6
			roll_many 16, 0
			@game.score.should == 28
		end

	end

	def roll_spare
		roll_once 5
		roll_once 5
	end

	def roll_once (amount)
		@game.roll amount
	end

	def roll_many(n, amount) 
		n.times do
			@game.roll amount
		end
	end

end

