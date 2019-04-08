require 'pry'

require_relative "../lib/song.rb"
require_relative "../lib/genre.rb"

class Artist

  attr_reader :name

  @@all = []  #Stores each artist in the class variable

  def self.all #Self is artist class, self referse to a class
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self #Only puttin gin the name of object
  end

  def new_song(song_name, genre) #Instance method
    Song.new(song_name, self, genre)
  end

binding.pry

  def songs
  end

end
