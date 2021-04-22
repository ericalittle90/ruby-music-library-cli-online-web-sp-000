class Artist

  attr_accessor :name
  attr_reader :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    new(name).save
    self
  end

  def add_song(song)
    song.artist = self unless song.artist
  end

  def songs
    Song.all.select { |s| s.artist == self }
  end

end
