class Song

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    self.artist = artist if artist
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    new(name).save
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

end
