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

	def win(player,score)
		if score == [1,2,3] || [4,6,7] ||[7,8,9] ||
	    [1,4,7] || [2,5,8] ||[3,6,9]||
		[1,5,9] ||[7,5,3]
		@output.puts('#{player} has one!')
	else
		false
	end
		
	end


end