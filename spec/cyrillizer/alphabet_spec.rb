# encoding: utf-8

require 'spec_helper'

RSpec.describe Cyrillizer do
  after :each do
    Cyrillizer.language = nil
  end

  describe ".language" do
    it "defaults to macedonian language" do
      expect(Cyrillizer.language).to eq(:macedonian)
    end
  end

  describe ".language=" do
    it "can specify existing language" do
      Cyrillizer.language = :russian
      expect(Cyrillizer.language).to eq(:russian)
    end

    it "can load all defined languages" do
      Dir.children("lib/alphabets").each do |file|
        language = file.chomp('.yml')
        Cyrillizer.language = language
        expect('Б'.to_lat).to eq('B')
        expect('B'.to_cyr).to eq('Б')
      end
    end
  end

  describe ".alphabet" do
    it "can load alphabet for a language" do
      expect(Cyrillizer.alphabet['Џ']).to eq('Dzh')
    end
  end

  describe ".alphabet=" do
    it "can set alphabet and language with alphabet file" do
      Cyrillizer.alphabet = File.join(File.dirname(__FILE__), '../../lib/alphabets/russian.yml')
      expect(Cyrillizer.alphabet['Щ']).to eq('Shch')
      expect(Cyrillizer.language).to eq('russian')
    end
  end
end
