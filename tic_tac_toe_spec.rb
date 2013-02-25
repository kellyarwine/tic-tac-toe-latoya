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
	
	it "will play 4 if the human has moved 1 and 7" do
		subject.block(1,7).should == [4]
	end

	it "will play 6 if the human has moved 3 and 9" do
		subject.block(3,9).should == [6]
	end

	it "will play 8 if the human has moved 7 and 9" do
		subject.block(7,9).should == [8]
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

























