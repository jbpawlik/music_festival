require 'rspec'
require 'artist'
require 'stage'
require 'pry'

describe '#Artist' do
  
  before(:each) do
    Stage.clear()
    Artist.clear()
    @stage = Stage.new("Woods", nil)
    @stage.save()
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('create a new artist') do
    artist = Artist.new("BoJangles", "Bluegrass", @stage.id, nil)
    artist.save()
    artist2 = Artist.new("Cher", "Pop", @stage.id, nil)
    artist2.save()
    expect(Artist.all()).to(eq([artist, artist2]))
  end
end

  describe('#stage') do
    it('assigns the artist to a stage') do
      artist = Artist.new("Cher", "Pop", @stage.id, nil)
      artist.save()
      expect(artist.stage()).to(eq(@stage))
    end
  end
end