# coding: utf-8
module Cyrillizer
  module Converter

    Latin    = %w(DZH Dzh dzh GJ Gj gj ZH Zh zh DZ Dz dz LJ Lj lj NJ Nj nj KJ Kj kj CH Ch ch SH Sh sh A a B b V v G g D d E e Z z I i J j K k L l M m N n O o P p R r S s T t U u F f H h C c)
    Cyrillic = %w(Џ   Џ   џ   Ѓ  Ѓ  ѓ  Ж  Ж  ж  Ѕ  Ѕ  ѕ  Љ  Љ  љ  Њ  Њ  њ  Ќ  Ќ  ќ  Ч  Ч  ч  Ш  Ш  ш А а Б б В в Г г Д д Е е З з И и Ј ј К к Л л М м Н н О о П п Р р С с Т т У у Ф ф Х х Ц ц)

    def to_cyr
      code(self.dup, Latin, Cyrillic)
    end

    def to_cyr!
      code(self, Latin, Cyrillic)
    end

    def to_lat
      code(self.dup, Cyrillic, Latin)
    end

    def to_lat!
      code(self, Cyrillic, Latin)
    end

    private
    def code(text, from, to)
      from.each_with_index do |latin, i|
        text.gsub!(latin, to[i])
      end
      return text
    end

  end
end

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end
