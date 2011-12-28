# encoding: utf-8

require 'spec_helper'

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

  it "should change original string when using to_lat!" do
    string = 'оргинален'
    string.to_lat!.should == 'orginalen'
    string.should == 'orginalen'
  end

  it "should not change original string when using to_lat" do
    string = 'оргинален'
    string.to_lat.should == 'orginalen'
    string.should == 'оргинален'
  end

end
