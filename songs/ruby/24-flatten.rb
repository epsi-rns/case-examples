require_relative 'MySongs'
include Songs

def flatten(songs)
  tags = []
  
  songs.each { |song| 
    unless song['tags'] == nil
       song['tags'].each { |tag| tags << tag }
   end  
  }
  
  tags
end

puts "#{flatten(SONGS)}"
