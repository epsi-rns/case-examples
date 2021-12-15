require_relative 'MySongs'
include Songs

def flatten(songs)
  tags = []
  
  songs.each { |song| 
    if song['tags'] != nil
       song['tags'].each { |tag| tags << tag }
   end  
  }
  
  tags
end

puts "#{flatten(SONGS)}"
