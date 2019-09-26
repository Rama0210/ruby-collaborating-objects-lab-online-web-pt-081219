class Artist 
  attr_accessor :name, :songs  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
end

def add_song(song)
  song.artist = self
end
  
  def self.find_or_create_by_name(name)
    result = Artist.all.find do |artist|
      artist.name == name
    end
  if !result
      result = Artist.new(name)
    end

    result
  end

  def print_songs
    puts self.songs.map { |song| song.name }
  end
end

