class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist != nil
      return self.artist.name
    else
      return self.artist
    end
  end

end
