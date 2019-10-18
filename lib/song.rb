class Song
  attr_accessor :name, :artist, :song
  
  @@all = []
  def initialize(name, artist = nil)
    @name = name
    @@all << self
  end
  
  def artist
    Artist.songs
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end
end