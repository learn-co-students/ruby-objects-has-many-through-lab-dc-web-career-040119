require 'pry'
class Genre
  attr_reader :name
  @@all = []
  def initialize(name)
    @name= name
    @@all << self
  end

  def songs
      Song.all.select do |song|
      song.genre == self
    #self.Songeach do
    #iterates through all songs
    #finds the song that belongs genre
    end
  end

  def artists

      self.songs.map do |song_object|
        song_object.artist
        #genre.artist
      # song.artist
      #iterates over genre collection of songs
     #collect the artist
      end
    #  binding.pry
  end

  def self.all
    @@all

  end
end
