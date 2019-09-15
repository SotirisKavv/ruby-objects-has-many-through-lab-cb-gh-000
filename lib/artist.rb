class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, genre).artist_name = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
