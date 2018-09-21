class Genre
  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all
  end

  def artists
    Artist.all
  end

end
