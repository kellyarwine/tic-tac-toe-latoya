class Game

	def initialize(output)
		@output = output
	end

	def start(move=nil)
		@output.puts('Welcome to Tic Tac Toe. You are player X.  Good luck!')
		@output.puts('Enter first move: ')
	end

	def move(move)
		@output.puts move
	end
end