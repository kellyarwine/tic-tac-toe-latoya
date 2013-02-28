class Board

	def initialize
		@win = [[1,2,3], [4,5,6], [7,8,9],
			  [1,4,7], [2,5,8], [3,6,9],
			  [1,5,9], [3,5,7] ]

		@board = {}

	end


	def winner(player,player_spaces)
		@win.each do |pattern|
		    if player_spaces == pattern
	   			puts "#{player.upcase} HAS WON!"
	   		end   
	   	end
	end

	def tie(human_spaces, computer_spaces)
		@win.each do |pattern|
			if human_spaces != pattern && computer_spaces != pattern
				puts "Tie"
			end
		end
	end

	def moves(space,move)
     	@board = {space => "#{move}"}
    end

    def mult_moves(*space)
    	space = Hash[*space]
    	space 
    	 
    end

end