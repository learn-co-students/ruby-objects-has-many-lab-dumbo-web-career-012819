require 'pry'
require_relative 'song.rb'

class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    #songs has many songs
    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        # .artist extracted from song.rb
        @songs << song
        song.artist = self
    end

    def self.song_count
        Song.all.count 
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    # binding.pry
    # 0

end
