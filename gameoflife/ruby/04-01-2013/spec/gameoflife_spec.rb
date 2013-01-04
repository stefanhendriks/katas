require 'gameoflife'

describe GameOfLife do

	context "generation evaluation" do
		
		context "alive cell" do
			it "dies with fewer than two live neighbours, as if caused by underpopulation."
			it "dies with more than three live neighbours"
			it "lives with two or three live neighbours"
		end

		context "dead cell" do
			it "becomes a live cell with exactly three live neighbours"
		end
	end

end
