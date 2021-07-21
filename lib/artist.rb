class Artist
  attr_reader :id
  attr_accessor :artist_name, :genre, :id

  @@artists = {}
  @@total_rows = 0

  def initialize(artist_name, genre, id)
    @artist_name = artist_name
    @genre = genre
    @id = id || @@total_rows += 1
  end

  def self.clear
    @@artists = {}
    @@total_rows = 0
  end

  def self.all
    @@artists.values()
  end

  def ==(artist_to_compare)
    self.artist_name() == artist_to_compare.artist_name()
  end

  def save
    @@artists[self.id] = Artist.new(self.artist_name, self.genre, self.id)
  end

end

