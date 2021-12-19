require_relative 'MySongs'
require_relative 'MyHelperUnique'
include HelperUnique

tags = Songs::SONGS
  .map { |song| song['tags'] }
  .compact.flatten

puts "#{unique(tags)}"
