def sender(channel)
  songs.each do |song| 
    if song.tags != [] of String
      song.tags.each { |tag| channel.send(tag) }
    end  
  end
  channel.send(nil)
end

def receiver(channel)
  tags = [] of String

  while true
    message = channel.receive
    if message != nil
      tags << message.to_s
    else
      puts tags
      break
    end  
  end
end

require "./my-songs"
channel = Channel(String | Nil).new
spawn sender(channel)
spawn receiver(channel)
Fiber.yield
