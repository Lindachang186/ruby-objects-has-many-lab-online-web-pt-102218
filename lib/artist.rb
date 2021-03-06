require "pry"

class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @@songs << song
    song.artist = self
  end

  def self.song_count
    @@songs.size
  end

  def songs
    @@songs
  end

end
