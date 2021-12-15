require_relative 'MySongs'
include Songs

def sender(channel)
  SONGS.each do |song| 
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
      tags << message # .to_s
    else
      puts tags
      break
    end  
  end
end

require 'agent'
chan = channel!(String)

go! do
  sender(chan)
end

receiver(chan)
