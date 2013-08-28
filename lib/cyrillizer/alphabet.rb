# encoding: utf-8

require 'yaml'

module Cyrillizer

  class << self
    attr_writer :language

    def language
      @language ||= :macedonian
    end

    def language=(language)
      @language = language
      @alphabet = nil
    end

    def alphabet
      @alphabet ||= YAML.load_file("lib/alphabets/#{language}.yml")
    end
  end
end
