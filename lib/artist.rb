require 'pry'

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
    
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
    @@songs << song
    self.songs << song
  end
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    self.songs << new_song
    @@songs << new_song
  end
  
  def self.song_count
    @@songs.length
  end
  
end