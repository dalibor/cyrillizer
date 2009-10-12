module Cyrillizer
	module Converter
	  def to_cyr
		  new_string = ''
		  old_string = self.split('')
		  string_start = 0
		  string_end = old_string.size
		  while string_start < string_end
			new_string << case old_string[string_start]
				when 'a'; 'а'
				when 'b'; 'б'
				when 'v'; 'в'
				when 'g';
					if string_start+1 <= string_end && old_string[string_start+1] == 'j'
						string_start += 1
						'ѓ'
					else
						'г'
					end
				when 'd'; 
					if string_start+1 <= string_end && old_string[string_start+1] == 'z'
						string_start += 1
						'ѕ'
					elsif string_start+1 <= string_end && old_string[string_start+1] == 'j'
						string_start += 1
						'џ'
					else
						'д'
					end
				when 'e'; 'е'
				when 'z'; 
					if string_start+1 <= string_end && old_string[string_start+1] == 'h'
						string_start += 1
						'ж'
					else
						'з'
					end
				when 'i'; 'и'
				when 'j'; 'ј'
				when 'k'; 
					if string_start+1 <= string_end && old_string[string_start+1] == 'j'
						string_start += 1
						'ќ'
					else
						'к'
					end
				when 'l';
					if string_start+1 <= string_end && old_string[string_start+1] == 'j'
						string_start += 1
						'љ'
					else
						'л'
					end
				when 'm'; 'м'
				when 'n'; 
					if string_start+1 <= string_end && old_string[string_start+1] == 'j'
						string_start += 1
						'њ'
					else
						'н'
					end
				when 'o'; 'о'
				when 'p'; 'п'
				when 'r'; 'р'
				when 's'; 
					if string_start+1 <= string_end && old_string[string_start+1] == 'h'
						string_start += 1
						'ш'
					else
						'с'
					end
				when 't'; 'т'
				when 'u'; 'у'
				when 'f'; 'ф'
				when 'h'; 'х'
				when 'c'; 
					if string_start+1 <= string_end && old_string[string_start+1] == 'h'
						string_start += 1
						'ч'
					else
						'ц'
					end
				else
					old_string[string_start]
			end
			string_start += 1
		  end
		  return new_string
	  end

	end
end

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end
