def sender(songs)
  Fiber.new do
    SONGS.each do |song|
      if song['tags'] != nil
        song['tags'].each do |tag|
          Fiber.yield tag
        end
      end
    end
    Fiber.yield nil
  end
end

def receiver(fiber)
  tags = []
  while true
    message = fiber.resume
    if message != nil
      tags << message
    else
      puts "#{tags}"
      break
    end
  end
end

require_relative 'MyStructSongs'
include StructSongs

fiber = sender(SONGS)
receiver(fiber)
