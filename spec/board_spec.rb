require 'board'

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