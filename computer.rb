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
		if human_move == [1,3]
			@computer << 2
		else
			human_move == [1,7]
			@computer << 4
		end
		@computer
	end

end

