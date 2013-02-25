class Board

	def initialize
		@human = Array.new()
		@computer = Array.new
	end

	def human(space)
		@human << space
	end

	def computer(space)
		@computer << space
	end

end