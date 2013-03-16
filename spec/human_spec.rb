require 'human'

describe Human do

  it "should play" do
    subject.play(1).should == [1]
  end

end