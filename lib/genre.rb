

class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artist_list = songs.collect do |song|
      song.artist
    end
    artist_list.uniq
  end

end
