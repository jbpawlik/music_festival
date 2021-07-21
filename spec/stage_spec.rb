require 'rspec'
require 'stage'
require 'pry'

describe '#Stage' do 
  
  before(:each) do
    Stage.clear()
  end

  describe('.all') do
    it("returns an empty array when there are no stages") do
      expect(Stage.all()).to(eq([]))
    end
  end

end