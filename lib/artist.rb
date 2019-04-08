require "pry"
class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  @@all = []

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
