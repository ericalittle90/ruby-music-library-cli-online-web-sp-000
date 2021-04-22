class Song

  attr_accessor :name, :artist
  attr_reader :artist

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

end
