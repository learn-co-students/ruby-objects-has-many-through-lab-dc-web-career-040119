require 'pry'



class Artist

@@all = []

attr_reader(:name, :song_name, :genre)

  def initialize(name)
    @name = name
    @song_name = song_name
    @genre = genre
    @@all << self
  end

  def new_song(song_name, genre)
    Song.new(song_name, genre)
  end

  def self.all
    @@all
  end
end
