class Game

	def initialize(output)
		@output = output
	end

	def start
		puts 'Welcome to Tic Tac Toe. You are player X.  Enter First Move:'
	
	end

	def game_over
		@output.puts('Game Over')
	end

	def move(move)
		@output.puts move
	end
end