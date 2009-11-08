require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Convertor" do

  it "changes original string" do
    string = 'orginalen'
    string.to_cyr!.should == 'оргинален'
    string.should == 'оргинален'
  end

  it "does not changes original string" do
    string = 'orginalen'
    string.to_cyr.should == 'оргинален'
    string.should == 'orginalen'
  end

end
