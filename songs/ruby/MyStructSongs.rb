module StructSongs
  Song = Struct.new(:title, :tags) do
    def value
      "#{title}: #{tags}"
    end
  end

  SONGS = [
    Song.new('Cantaloupe Island',
      ['60s', 'jazz']),
    Song.new('Let It Be', ['60s', 'rock']),
    Song.new('Knockin\' on Heaven\'s Door',
      ['70s', 'rock']),
    Song.new('Emotion', ['60s', 'jazz']),
    Song.new('The River')
  ]
end
