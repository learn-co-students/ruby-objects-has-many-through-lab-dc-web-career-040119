require 'pry'

require_relative "../lib/song.rb"
require_relative "../lib/genre.rb"


class Artist

@@all = []

attr_reader(:name)

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select do |song|
      if song.artist == self
        song.name
      end
    end
  end

  def genres
    Song.all.collect do |song|
      song.genre
    end
  end

end
#
# tool = Artist.new("Tool")
#
# puts tool
# puts tool.name
#
#
# metal = Genre.new("metal")
#
# binding.pry
#
# "hi"
# tool.genre("metal")
# puts tool.genre
