class Song
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
def save
  @@all << self
end

def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

 def self.all
    @@all
end
end