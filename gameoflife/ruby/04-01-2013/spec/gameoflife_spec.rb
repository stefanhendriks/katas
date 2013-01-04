require 'gameoflife'

describe GameOfLife do

	context "generation evaluation" do
		

		context "alive cell" do
			{
				0 => true,
				1 => true,
				2 => false,
				3 => false,
				4 => true,
				5 => true,
				6 => true,
				7 => true,
				8 => true
			}.each_pair do |live_neighbours, must_die|
				expectation = must_die ? "to die" : "to stay alive"
				description = "is expected #{expectation} with #{live_neighbours} live neighbours" 
				it "#{description}" do
					dies(live_neighbours).should eq(must_die)
				end
			end
		end

		context "dead cell" do
			it "becomes a live cell with exactly three live neighbours"
		end

		def dies(live_neighbours)
			live_neighbours < 2 || live_neighbours >= 4
		end
	end


end
