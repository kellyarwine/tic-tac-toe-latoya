class Computer

	def initialize
		@computer = Array.new
		
	end


	def computer_first_move(human_first_move)
		if human_first_move != 5
			@computer << 5	
		else 
			@computer << 1
		end
	end

	def middle_block(*human_move)
		plays = human_move.to_a
		plays = plays.inject(0) { |sum, x| sum + x } 
		computer_play = plays / 2
		@computer << computer_play
	end

	def diag_block(*human_move)
		if human_move == [7,5] 
			@computer << 3
		elsif human_move == [5,9] 
			@computer << 1
		elsif human_move == [5,3] 
			@computer << 7
		else human_move == [1,5] 
			@computer << 9
		end
	end

	def perimeter_block(*human_move)
		if human_move == [4,7] 
			@computer << 1
		elsif human_move == [5,8] 
			@computer << 2
		elsif human_move == [6,9] 
			@computer << 3
		elsif human_move == [5,6] 
			@computer << 4
		elsif human_move == [5,4] 
			@computer << 6
		elsif human_move == [4,1] 
			@computer << 7
		elsif human_move == [5,2] 
			@computer << 8
		elsif human_move == [6,3] 
			@computer << 9
		end		
	end
end

