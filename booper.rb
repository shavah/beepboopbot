require_relative 'MQ'

mq = Rabbit.new

puts "listening"
mq.subscribe do |sound_type|
  case sound_type
    when "foghorn"
      `omxplayer ./sounds/foghorn.mp3`

    when "scream"
      `omxplayer ./sounds/scream.mp3`
  end
end
