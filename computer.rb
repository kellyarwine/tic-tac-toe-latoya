class Computer

	def initialize
		@human = Array.new
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

end

