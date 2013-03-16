class Game

	def initialize(output, input)
		@output = output
		@input = input
	end

	def start
		puts 'Welcome to Tic Tac Toe. You are player X.  Enter First Move:'
		gets_move
	end

	def game_over
		@output.puts('Game Over')
	end

	def move(move)
		@output.puts move
	end

	def gets_move
		@input.gets.chomp
	end


end