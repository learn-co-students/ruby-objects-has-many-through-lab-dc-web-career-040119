require 'pry'

class Song
  # binding.pry
  attr_reader :song_name , :artist, :genre

  @@all_songs = []

  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@all_songs << self

  end



  def self.all #Self is artist class, self referse to a class
    @@all_songs
  end

  def self.example
    puts "example123123123"
  end

end
