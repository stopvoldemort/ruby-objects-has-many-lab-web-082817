class Song

  attr_accessor :artist
  attr_reader :name


  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    Artist.song_count= Artist.song_count + 1
  end

  def artist_name
    if !self.artist
      nil
    else
      self.artist.name
    end
  end




end
