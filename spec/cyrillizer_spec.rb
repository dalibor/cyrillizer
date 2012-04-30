# encoding: utf-8

require 'spec_helper'

describe "Convertor" do

  it "should change original string when using to_cyr!" do
    string = 'Milisav'
    string.to_cyr!.should == 'Милисав'
    string.should == 'Милисав'
  end

  it "should not change original string when using to_cyr" do
    string = 'Darinka'
    string.to_cyr.should == 'Даринка'
    string.should == 'Darinka'
  end

  it "should change original string when using to_lat!" do
    string = 'Руменка'
    string.to_lat!.should == 'Rumenka'
    string.should == 'Rumenka'
  end

  it "should not change original string when using to_lat" do
    string = 'Изворка'
    string.to_lat.should == 'Izvorka'
    string.should == 'Изворка'
  end

  it "should convert Serbian characters" do
    "chicha".to_cyr.should == 'чича'
  end

end
