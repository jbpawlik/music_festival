class Artist
  attr_reader :id
  attr_accessor :artist_name, :genre, :stage_id, :id

  @@artists = {}
  @@total_rows = 0

  def initialize(artist_name, genre, stage_id, id)
    @artist_name = artist_name
    @genre = genre
    @stage_id = stage_id
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
    @@artists[self.id] = Artist.new(self.artist_name, self.genre, self.stage_id, self.id)
  end

  def stage
    Stage.find(self.stage_id)
  end

  def self.find_by_stage(stg_id)
    artists = []
    @@artists.values.each do |artist|
      if artist.stage_id == stg_id
        artists.push(artist)
      end
    end
    artists
  end

end

