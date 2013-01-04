class Grid
	attr_accessor :data

	def initialize(input)
		@data = read_map(input)
	end

	def width
		@data[0].size
	end

	def height
		@data.size
	end

	private

	def read_map(input)
		input_lines = input.split(/\n/)
		first_line = input_lines[0]

		width = first_line.split(' ')[1].to_i
		height = first_line.split(' ')[0].to_i

		lines = []
		for i in 1..height
			line = []
			il = input_lines[i]
			for j in 1..width
				char = il[(j-1)]
				line << (char == "." ? false : true)
			end
			lines << line
		end
		lines
	end
end

class GameOfLife

end
