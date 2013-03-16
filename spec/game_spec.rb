require "game"

describe Game do 

	let(:output) { double('output') }
	let(:input) { double('input') }
	let(:game)   { Game.new(output,input) }
	


	it "starts by greeting the human" do
		STDOUT.should_receive(:puts).with('Welcome to Tic Tac Toe. You are player X.  Enter First Move:')
		game.start
	end

	it "tells the human when the game is over" do
		output.should_receive(:puts).with('Game Over')
		game.game_over
	end

	xit "receives a move from the human" do
		output.should_receive(:puts).with(1)
		game.move(1)
	end

	it "gets a move from the human" do
		input.should_receive(:gets).and_return("1\n")
		game.gets_move
	end

end