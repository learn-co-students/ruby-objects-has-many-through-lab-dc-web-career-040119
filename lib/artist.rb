require 'pry'

class Artist
  @@all = []

  attr_reader :name
  # :genre,:song

  def initialize(name)
    @name = name
    # @genre = genre
    # @song = song
    #@song_name = song_name
    @@all << self

  end

  def self.all
    @@all
  end

  def new_song(name,genre)
    #     #all.each do|artist|
    #       #binding.pry
    Song.new(name,self,genre)
    # Artist.all.each do |artist|
    #   Song.new("ninety_nine_problems", artist, rap)
    # end
    # #  Song.new(song_name,sgenre)
    #     #song.new knows it belongs to self

  end

  def songs

    #music = new_song(Song.name,Genre.name)
    Song.all.select do |song|
      #binding.pry
      song.artist == self
#Song.all.select{|song| song.Song.artist == self}
    end
    #iterates through all songs
    #finds songs that belong to self
    #use select
  end

  def genres

    self.songs.map do |song|
      song.genre
      # def genres
      #     songs.map(&:genre)
      #   end
      #Song.all.select do ||

      #artist.song == self
      #iterates through artist songs
      #collects genre of each songs
    end
  end

end
