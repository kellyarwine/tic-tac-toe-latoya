require "./game"
require "./human"
require "./computer"
require "./board"


describe Game do 

	let(:output) { double('output').as_null_object }
	let(:game)   { Game.new(output) }


	it "starts by greeting the human" do
		output.should_receive(:puts).with('Welcome to Tic Tac Toe. You are player X.  Good luck!')
		game.start 
	end

	it "tells the human to enter the first move " do 
		output.should_receive(:puts).with('Enter first move: ')
		game.start
	end

	it "receives a move from the human" do
		output.should_receive(:puts).with(1)
		game.move(1)
	end

	it "tells the human when the game is over" do
		output.should_receive(:puts).with('Game Over')
		game.game_over
	end

end

describe Computer do

	it "will play 5 if humans first move is  2" do
		subject.computer_first_move(2).should == [5]
	end

	it "will play 5 if humans first move is 4" do
		subject.computer_first_move(4).should == [5]
	end

	it "will play 5 if humans first move is 6" do
		subject.computer_first_move(6).should == [5]
	end

	it "will play 5 if humans first move is 8" do
		subject.computer_first_move(8).should == [5]
	end

	it "will play 5 if humans first move is 8" do
		subject.computer_first_move(8).should == [5]
	end

	it "will play 5 if humans first move is 1" do
		subject.computer_first_move(1).should == [5]
	end

	it "will play 1 if humans first move is 5" do
		subject.computer_first_move(5).should == [1]
	end


	it "will play 2 if the human has moved 1 and 3" do
		subject.middle_block(1,3).should == [2]
	end
	
	it "will play 4 if the human has moved 1 and 7" do
		subject.middle_block(1,7).should == [4]
	end

	it "will play 6 if the human has moved 3 and 9" do
		subject.middle_block(3,9).should == [6]
	end

	it "will play 8 if the human has moved 7 and 9" do
		subject.middle_block(7,9).should == [8]
	end


	it "will play 1 if the human plays 5 and 9" do
		subject.diag_block(5,9).should == [1]
	end

	it "will play 3 if the human plays 7 and 5" do
		subject.diag_block(7,5).should == [3]
	end

	it "will play 7 if the human plays 5 and 3" do
		subject.diag_block(5,3).should == [7]
	end

	it "will play 9 if the human plays 1 and 5" do
		subject.diag_block(1,5).should == [9]
	end

	it "will play 1 if the human plays 4 and 7" do
		subject.perimeter_block(4,7).should == [1]
	end

	

end

describe Human do

	it "should play" do
		subject.play(1).should == [1]
	end

end

describe Board do

	it "should recognize a winner" do
		subject.winner("computer",[1,2,3]).should be_true
	end

	it "should recognize a tie" do
		subject.tie?([1,2,6,7,9],[3,4,5,8]).should be_true
	end

	it "should add the humans moves to the board" do
		subject.moves(5, "X").should == {5=> "X"}
	end

	it "should add the computers moves to the board" do
		subject.moves(1, "O").should == {1=> "O"}
	end

	it "should record multiple moves" do
		subject.mult_moves(1,"X",5,"O",3, "X").should == {1=>"X", 5=>"O", 3=>"X"}
	end

	it "should record multiple moves in order" do
		subject.mult_moves(1,"X",5,"O",3, "X").should == {1=>"X", 3=>"X", 5=>"O"}
	end 

	it "should be full" do
		subject.full?(1,"X",2,"X",3,"X",4,"X",5,"X",6,"X",7,"X",8,"X",9,"X").should be_true
	end

	it "should rest" do
		subject.reset(1,"X",2,"X",3,"X",4,"X",5,"X",6,"X",7,"X",8,"X",9,"X").should == {}
	end

	it "shoud recognize an invalid move" do
		subject.valid?(1,"X",2,"O",3,"X",1,"O").should be_false 
	end

	it "should recognize a valid move" do
		subject.valid?(7,"X",2,"O",3,"X",1,"O").should be_true
	end

end
























