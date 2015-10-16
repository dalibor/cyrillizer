# encoding: utf-8

module Cyrillizer
  module Converter

    def to_cyr
      code(self.dup, inverted_alphabet)
    end

    def to_cyr!
      code(self, inverted_alphabet)
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
      @alphabet ||= sort(Cyrillizer.alphabet)
    end

    def inverted_alphabet
      @inverted_alphabet ||= sort(alphabet.invert)
    end

    def sort(alphabet)
      alphabet.sort_by { |k, v| k.length }.reverse.to_h
    end
  end
end
