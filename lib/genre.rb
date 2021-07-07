require 'pry'
require_relative "../lib/song.rb"
require_relative "../lib/artist.rb"

class Genre

attr_reader(:name, :song)



@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def self.all
    @@all
  end

  def artists
    Song.all.collect do |song|
      song.artist
    end
  end


end
