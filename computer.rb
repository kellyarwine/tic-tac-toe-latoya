class Computer

	def initialize
		@computer = Array.new
	end


	def human_first_move(human_first_move)
		if human_first_move != 5
			@computer << 5		
		end
	end

	def block(*human_move)
		plays = human_move.to_a
		plays = plays.inject(0) { |sum, x| sum + x } 
		computer_play = plays / 2
		@computer << computer_play
	end

	def diag_block(*human_move)
		if human_move == [7,5] #12
			@computer << 3
		elsif human_move == [5,9] # 14
			@computer << 1
		elsif human_move == [5,3] #8
			@computer << 7
		else human_move == [1,5] # 6
			@computer << 9
		end
	end

end

