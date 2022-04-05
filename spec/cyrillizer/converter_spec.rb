# encoding: utf-8

require 'spec_helper'

RSpec.describe Cyrillizer::Converter do
  let(:string) { 'anything' }


  describe "#to_cyr" do
    it "converts latin to cyrillic" do
      expect('Cela rechenica na latinica'.to_cyr).to eq('Цела реченица на латиница')
    end

    it "converts letters with multiple characters" do
      expect('Kjeljav Dzhip'.to_cyr).to eq('Ќељав Џип')
    end

    it "it copies string before changing" do
      expect(string.to_cyr.object_id).not_to eq(string.object_id)
    end
  end

  describe "#to_cyr!" do
    it "converts latin to cyrilic" do
      expect('Cela rechenica na latinica'.to_cyr!).to eq('Цела реченица на латиница')
    end

    it "changes original string" do
      expect(string.to_cyr!.object_id).to eq(string.object_id)
    end
  end

  describe "#to_lat" do
    it "converts cyrillic to latin" do
      expect('Цела реченица на латиница'.to_lat).to eq('Cela rechenica na latinica')
    end

    it "converts letters with multiple characters" do
      expect('Ќељав Џип'.to_lat).to eq('Kjeljav Dzhip')
    end

    it "it copies string before changing" do
      expect(string.to_lat.object_id).not_to eq(string.object_id)
    end
  end

  describe "#to_lat!" do
    it "converts cyrilic to latin" do
      expect('Цела реченица на латиница'.to_lat!).to eq('Cela rechenica na latinica')
    end

    it "changes original string" do
      expect(string.to_lat!.object_id).to eq(string.object_id)
    end
  end

  context "conversion" do
    it "converts to latin" do
      expect('Цела реченица на латиница'.to_lat).to eq('Cela rechenica na latinica')
      expect('Ќељав Џип'.to_lat).to eq('Kjeljav Dzhip')
    end
  end

  describe "using russion language" do
    before :each do
      Cyrillizer.language = :russian
    end

    after :each do
      Cyrillizer.language = nil
    end

    it "can convert from different language" do
      expect("пульт управления".to_lat).to eq("pul't upravleniya")
      expect("pul't upravleniya".to_cyr).to eq("пульт управления")
    end
  end

  describe "using serbian language" do
    before :each do
      Cyrillizer.language = :serbian
    end

    after :each do
      Cyrillizer.language = nil
    end

    it "can convert from different language" do
      expect('њ'.to_lat).to eq('nj')
      expect('nj'.to_cyr).to eq('њ')
    end
  end
end
