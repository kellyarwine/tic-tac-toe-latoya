require "./game"
require "./human"
require "./computer"


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

	it "receives a move from the Human" do
		game.start
		output.should_receive(:puts).with(1)
		game.move(1)
	end


end

describe Computer do

	it "will move to 5 if player moves to 1" do
		subject.move(1).should == 5
	end

end

