# encoding: utf-8

require 'spec_helper'

describe Cyrillizer do
  describe ".language" do
    it "defaults to macedonian" do
      Cyrillizer.language.should == :macedonian
    end
  end

  describe ".language=" do
    before :each do
      Cyrillizer.language = nil
    end

    after :each do
      Cyrillizer.language = nil
    end

    it "can change language" do
      Cyrillizer.language = :russian
      Cyrillizer.language.should == :russian
    end
  end

  describe ".alphabet" do
    it "can load alphabet for a language" do
      Cyrillizer.alphabet["Џ"].should == "Dzh"
    end
  end
end
