class Artist

  attr_accessor :name
  attr_reader :songs

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
    songs << song unless songs.include?(song)
  end

  def songs
    @songs 
  end

end
