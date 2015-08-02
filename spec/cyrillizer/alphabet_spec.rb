# encoding: utf-8

require 'spec_helper'

describe Cyrillizer do
  after :each do
    Cyrillizer.language = nil
  end

  describe ".language" do
    it "defaults to macedonian language" do
      Cyrillizer.language.should == :macedonian
    end
  end

  describe ".language=" do
    it "can specify existing language" do
      Cyrillizer.language = :russian
      Cyrillizer.language.should == :russian
    end
  end

  describe ".alphabet" do
    it "can load alphabet for a language" do
      Cyrillizer.alphabet["Џ"].should == "Dzh"
    end
  end

  describe ".alphabet=" do
    it "can set alphabet and language with alphabet file" do
      Cyrillizer.alphabet = File.join(File.dirname(__FILE__), "../../lib/alphabets/russian.yml")
      Cyrillizer.alphabet['Щ'].should == "Shch"
      Cyrillizer.language.should == 'russian'
    end
  end
end
