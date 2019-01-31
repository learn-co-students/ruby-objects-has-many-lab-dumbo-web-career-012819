require_relative "song.rb"

class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    count = 0
    @@all.each {|artist| count += artist.songs.length}
    count
  end


end


#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 5)
#   .song_count
#     is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)
