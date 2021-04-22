class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    self.artist = artist
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

  def artist
    @artist = artist
    artist.add_song(self)
  end

end
