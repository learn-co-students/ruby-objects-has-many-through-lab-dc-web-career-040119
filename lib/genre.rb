require 'pry'

class Genre

attr_reader(:name)
attr_writer(:songs)



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


def artists

end

  def self.all
    @@all
  end
end
