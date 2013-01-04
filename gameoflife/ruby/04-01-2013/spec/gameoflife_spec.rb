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

			def dies(live_neighbours)
				live_neighbours < 2 || live_neighbours >= 4
			end
		end


		context "dead cell" do

			it "becomes a live cell with exactly three live neighbours" do
				live_neighbours = 3
				becomes_alive(live_neighbours).should eq(true)	
			end

			def becomes_alive(live_neighbours)
				live_neighbours == 3
			end
		end

	end

	context "grid" do
		context "input to data mapping" do
			it "returns an array with the given dimensions in input" do
				input = 
				"2 2\n" +
				"..\n" +
				"..\n"
				
				grid = Grid.new(input)
				grid.width.should == 2
				grid.height.should == 2
			end

			it "returns an array of only dead cells" do
				input = 
				"2 2\n" +
				"..\n" +
				"..\n"
			
				expected = [
					[false, false],
					[false, false]
				]

				grid = Grid.new(input)
				grid.data.should eq(expected)
			end


			it "returns an array with one live cell" do
				input = 
				"2 2\n" +
				".*\n" +
				"*.\n"
			
				expected = [
					[false, true],
					[true, false]
				]

				grid = Grid.new(input)
				grid.data.should eq(expected)
			end
		end

		context "drawing" do

			it "should draw a grid with given dimensions" do
				height = 4
				width = 8
				expected = 
					"........\n" + 
					"........\n" + 
					"........\n" + 
					"........\n"
				output(width, height).should eq(expected)
			end

			it "should draw an empty grid of 1x1" do
				expected = ".\n"
				grid = [[false]]
				output_grid(grid).should eq(expected)	
			end

			it "should draw an empty grid of 1x1" do
				expected = "*\n"
				grid = [[true]]
				output_grid(grid).should eq(expected)	
			end

			def output_grid(grid) 
				str = ""
				grid.each do | line |
					line.each do | cell |
						str += cell ? "*" : "."
					end
					str += "\n"
				end
				str
			end

			def output(width, height)
				str = ""
				for i in 1..height
					for j in 1..width
						str += "."
					end
					str += "\n"
				end		
				str
			end

		end
	end

	context "input output" do

		it "should return an empty board given an empty board" do
			input =
			"4 8\n" +
			"........\n" +
			"........\n" +
			"........\n" +
			"........\n"

			expected = 
			"4 8\n" +
			"........\n" +
			"........\n" +
			"........\n" +
			"........\n" 

			evolve(input).should eq(expected)
		end

		pending "should return an empty board, given a board with a single cell" do
			input =
			"4 8\n" +
			"........\n" +
			"...*....\n" +
			"........\n" +
			"........\n"

			expected = 
			"4 8\n" +
			"........\n" +
			"........\n" +
			"........\n" +
			"........\n" 

			evolve(input).should eq(expected)
		end

		def evolve(input)
			input
		end

	end

end

