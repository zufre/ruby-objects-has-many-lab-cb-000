class Song
  attr_accessor :artist, :name, :songs

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end

  def songs
    @songs
  end
  
end
