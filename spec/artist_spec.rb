require 'rspec'
require 'artist'
require 'pry'

describe '#Artist' do
  
  before(:each) do
    Artist.clear()
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('create a new artist') do
    artist = Artist.new("BoJangles", "Bluegrass", nil)
    artist.save()
    artist2 = Artist.new("Cher", "Pop", nil)
    artist2.save()
    expect(Artist.all()).to(eq([artist, artist2]))
  end
end
end