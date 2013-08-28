require 'cyrillizer/converter'
require 'cyrillizer/alphabet'

# Add conversion methods to all strings
class String
  include Cyrillizer::Converter
end
