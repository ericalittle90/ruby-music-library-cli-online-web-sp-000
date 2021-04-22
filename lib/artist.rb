class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
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
    @songs
  end

end
