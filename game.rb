class Game

	@board = {1=>"", 2=>"", 3=>"",
			  4=>"", 5=>"", 6=>"",
			  7=>"", 8=>"", 9=>""}




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




end