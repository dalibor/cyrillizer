# encoding: utf-8

require 'spec_helper'

describe Cyrillizer::Converter do
  let(:string) { 'anything' }


  describe "#to_cyr" do
    it "converts latin to cyrillic" do
      "Cela rechenica na latinica".to_cyr.should == "Цела реченица на латиница"
    end

    it "converts letters with multiple characters" do
      "Kjeljav Dzhip".to_cyr.should == "Ќељав Џип"
    end

    it "it copies string before changing" do
      string.to_cyr.object_id.should_not == string.object_id
    end
  end

  describe "#to_cyr!" do
    it "converts latin to cyrilic" do
      "Cela rechenica na latinica".to_cyr!.should == "Цела реченица на латиница"
    end

    it "changes original string" do
      string.to_cyr!.object_id.should == string.object_id
    end
  end

  describe "#to_lat" do
    it "converts cyrillic to latin" do
      "Цела реченица на латиница".to_lat.should == "Cela rechenica na latinica"
    end

    it "converts letters with multiple characters" do
      "Ќељав Џип".to_lat.should == "Kjeljav Dzhip"
    end

    it "it copies string before changing" do
      string.to_lat.object_id.should_not == string.object_id
    end
  end

  describe "#to_lat!" do
    it "converts cyrilic to latin" do
      "Цела реченица на латиница".to_lat!.should == "Cela rechenica na latinica"
    end

    it "changes original string" do
      string.to_lat!.object_id.should == string.object_id
    end
  end

  context "conversion" do
    it "converts to latin" do
      "Цела реченица на латиница".to_lat.should == "Cela rechenica na latinica"
      "Ќељав Џип".to_lat.should == "Kjeljav Dzhip"
    end
  end

  describe "using a different language" do
    before :each do
      Cyrillizer.language = :russian
    end

    after :each do
      Cyrillizer.language = nil
    end

    it "can convert from different language" do
      "пульт управления".to_lat.should == "pul't upravleniya"
      "pul't upravleniya".to_cyr.should == "пульт управления"
    end
  end
end
