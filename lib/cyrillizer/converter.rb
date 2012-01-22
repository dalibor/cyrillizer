# coding: utf-8
module Cyrillizer
  module Converter

    # Including officially 'non valid' (read: used on the internet, by
    # people who can't be bothered to set up their keyboard layouts)
    # Serbian Latin characters as well as the official letters
    Latin    = %w(Ð ð DJ Dj dj DZ Dz dz DŽ Dž dž ZH Zh zh LJ Lj lj NJ Nj nj CH Ch ch SH Sh sh A a B b V v G g D d E e Ž ž Z z I i J j K k L l M m N n O o P p R r S s T t Ć ć U u F f H h C c Č č Š š)
    Cyrillic = %w(Ђ ђ Ђ Ђ ђ Џ Џ џ Џ Џ џ Ж Ж ж Љ Љ љ Њ Њ њ Ч Ч ч Ш Ш ш А а Б б В в Г г Д д Е е Ж ж З з И и Ј ј К к Л л М м Н н О о П п Р р С с Т т Ћ ћ У у Ф ф Х х Ц ц Ч ч Ш ш)

    def to_cyr
      convert(self.dup, Latin, Cyrillic)
    end

    def to_cyr!
      convert(self, Latin, Cyrillic)
    end

    def to_lat
      convert(self.dup, Cyrillic, Latin)
    end

    def to_lat!
      convert(self, Cyrillic, Latin)
    end

    private
    def convert(text, from, to)
      from.each_with_index do |char, i|
        text.gsub!(char, to[i])
      end
      text
    end

  end
end

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end
