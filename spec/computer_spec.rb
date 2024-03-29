require 'computer'

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

  it "will play 2 if the human plays 5 and 8" do
    subject.perimeter_block(5,8).should == [2]
  end

  it "will play 3 if the human plays 6 and 9" do
    subject.perimeter_block(6,9).should == [3]
  end

  it "will play 4 if the human plays 5 and 6" do
    subject.perimeter_block(5,6).should == [4]
  end

  it "will play 6 if the human plays 5 and 4" do
    subject.perimeter_block(5,4).should == [6]
  end

  it "will play 7 if the human plays 4 and 1" do
    subject.perimeter_block(4,1).should == [7]
  end

  it "will play 8 if the human plays 4 and 1" do
    subject.perimeter_block(5,2).should == [8]
  end

  it "will play 9 if the human plays 4 and 1" do
    subject.perimeter_block(6,3).should == [9]
  end
  
end