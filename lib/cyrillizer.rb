require 'cyrillizer/converter'

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end
