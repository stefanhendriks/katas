require 'gameoflife'

describe GameOfLife do

	context "generation evaluation" do
		
		context "alive cell" do
			it "dies with one live neighbour, as if caused by underpopulation." do
				live_neighbours = 1
				dies(live_neighbours).should be_true
			end
			
			it "dies with zero live neighbours, as if caused by underpopulation." do
				live_neighbours = 0
				dies(live_neighbours).should be_true
			end

			pending "dies with more than three live neighbours" do
				
			end

			it "lives with two or three live neighbours"
		end

		context "dead cell" do
			it "becomes a live cell with exactly three live neighbours"
		end
	end

	def dies(live_neighbours)
		live_neighbours < 2
	end

end
