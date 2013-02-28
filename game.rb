class Game

	def initialize(output)
		@output = output
	end

	def start
		@output.puts('Welcome to Tic Tac Toe. You are player X.  Good luck!')
		@output.puts('Enter first move: ')
	end

	def move(move)
		@output.puts move
	end

	def game_over
		@output.puts('Game Over')
	end

end