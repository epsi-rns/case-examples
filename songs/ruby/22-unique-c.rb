require_relative 'MyHelperUnique'
include HelperUnique

tags = ['60s', 'jazz', '60s', 'rock',
        '70s', 'rock', '70s', 'pop']

puts "#{unique(tags)}"
