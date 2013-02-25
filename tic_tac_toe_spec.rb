require "./game"


describe Game do 

	let(:output) { double('output').as_null_object }
	let(:game)   { Game.new(output) }

	it "starts by greeting the player" do
		output.should_receive(:puts).with('Welcome to Tic Tac Toe. You are player X.  Good luck!')
		game.start 
	end

	it "prompts the first move" do 
		output.should_receive(:puts).with('Enter first move: ')
		game.start
	end
	
end