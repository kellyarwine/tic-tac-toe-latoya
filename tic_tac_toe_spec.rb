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

end

describe Computer do

	it "will play 5 if humans first move is  2" do
		subject.human_first_move(2).should == [5]
	end

	it "will play 5 if humans first move is 4" do
		subject.human_first_move(4).should == [5]
	end

	it "will play 5 if humans first move is 6" do
		subject.human_first_move(6).should == [5]
	end

	it "will play 5 if humans first move is 8" do
		subject.human_first_move(8).should == [5]
	end

	it "will play 5 if humans first move is 8" do
		subject.human_first_move(8).should == [5]
	end

	it "will play 5 if humans first move is 1" do
		subject.human_first_move(1).should == [5]
	end



	it "will play 2 if the human has moved 1 and 3" do
		subject.block(1,3).should == [2]
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

























