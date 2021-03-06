class Artist

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name="", genre="")
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name,genre)
    song=Song.new(name,self,genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map {|song| song.genre}
  end

end
