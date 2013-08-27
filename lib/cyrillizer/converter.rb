# coding: utf-8
require_relative 'alphabet'

module Cyrillizer
  module Converter

    def to_cyr
      code(self.dup, alphabet.invert)
    end

    def to_cyr!
      code(self, alphabet.invert)
    end

    def to_lat
      code(self.dup, alphabet)
    end

    def to_lat!
      code(self, alphabet)
    end

    private

    def code(text, alphabet)
      text.each_char do |ch|
        text[ch] = alphabet[ch] if alphabet.has_key? ch
      end
    end

    def alphabet
      const = Cyrillizer.language.to_s.capitalize
      Cyrillizer::Alphabet.const_defined?(const) ? Cyrillizer::Alphabet.const_get(const) : {}
    end

  end
end

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end
