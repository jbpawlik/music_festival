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

  describe('#==') do
    it("is the same stage if it has the same attributes as another stage") do
      stage = Stage.new("Woods", nil)
      stage.save()
      stage2 = Stage.new("Woods", nil)
      stage2.save()
      expect(stage).to(eq(stage2))
    end
  end

  describe('#save') do
    it("saves a stage") do
      stage = Stage.new("Woods", nil)
      stage.save()
      stage2 = Stage.new("Mists", nil)
      stage2.save()
      expect(Stage.all()).to(eq([stage, stage2]))
    end
  end

  describe('.clear') do
    it("clears all stages") do
      stage = Stage.new("Woods", nil)
      stage.save()
      stage2 = Stage.new("Mists", nil)
      stage2.save()
      Stage.clear()
      expect(Stage.all).to(eq([]))
    end
  end
end