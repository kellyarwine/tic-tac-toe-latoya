require "./game"
require "./human"
require "./computer"
require "./board"


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

	it "announces a winner" do
		subject.win("computer",[1,2,3])
		output.should_receive(:puts).with('computer has one!')
	end

end

describe Computer do

	it "will move 5 if player moves to 2" do
		subject.human_move(2).should == 5
	end

	it "will move 5 if the human moves 4" do
		subject.human_move(4).should == 5
	end

	it "will move 5 if player moves to 6" do
		subject.human_move(6).should == 5
	end

	it "will move 5 if the human moves 8" do
		subject.human_move(8).should == 5
	end
	

end

describe Board do

	it "should record the humans move" do 
		subject.human(1).should == [1]
	end

	it "should record the computers move" do
		subject.computer(5).should == [5]
	end

end

























