require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Convertor" do

  it "should change original string when using to_cyr!" do
    string = 'orginalen'
    string.to_cyr!.should == 'оргинален'
    string.should == 'оргинален'
  end

  it "should not change original string when using to_cyr" do
    string = 'orginalen'
    string.to_cyr.should == 'оргинален'
    string.should == 'orginalen'
  end

end
