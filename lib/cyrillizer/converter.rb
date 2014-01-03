# encoding: utf-8

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
      alphabet.each do |from, to|
        text.gsub!(from, to)
      end
      text
    end

    def alphabet
      Cyrillizer.alphabet
    end
  end
end
