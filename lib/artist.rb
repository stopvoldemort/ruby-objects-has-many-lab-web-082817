require_relative './song'
require 'pry'

class Artist
  attr_reader :name, :songs
  attr_accessor :song_count

  @@song_count = 0

  def self.song_count
    @@song_count
  end

  def self.song_count=(song_count)
    @@song_count = song_count
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    @songs << Song.new(song, self)
  end

end
