def sender(channel, songs)
  songs.each do |song| 
    if song['tags'] != nil
      song['tags'].each { |tag| channel << tag }
    end
  end
  channel << nil
end

def receiver(channel)
  tags = []

  while true
    message = channel.receive.first
    if message != nil
      tags << message.to_s
    else
      puts "#{tags}"
      break
    end  
  end
end

require_relative 'MySongs'
include Songs

require 'agent'
chan = channel!(Object)

go! do
  sender(chan, SONGS)
end

receiver(chan)
