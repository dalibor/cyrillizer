# cyrillizer

Character conversion from latin to cyrillic and vice versa.

## INSTALL

    gem install cyrillizer

## USAGE

    require 'cyrillizer'
    puts 'kirilica'.to_cyr    # => 'кирилица'
    puts 'латиница'.to_lat    # => 'latinica'

Specify conversion language:

    Cyrillizer.language = :russian
    puts "пульт управления".to_lat   # => "pul't upravleniya"
    puts "pul't upravleniya".to_cyr  # => "пульт управления"

Contribute conversion alphabets if you want yours built into the gem.

Or use your own custom alphabet:

    Cyrillizer.alphabet = "alphabet/russian.yml" # path to the alphabet

## TESTS

    bundle install
    rspec spec

## CONTRIBUTORS

See [contributors](https://github.com/dalibor/cyrillizer/graphs/contributors) list.

## LICENSE:

(The MIT License)

Copyright (c) 2009-2015 Dalibor Nasevic

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
