class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map(&:genre).uniq
  end

  # Class methods

  def self.all
    @@all
  end
end
