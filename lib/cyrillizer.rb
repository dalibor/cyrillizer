require 'cyrillizer/converter'
require 'cyrillizer/alphabet'

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end
