class Stage
  attr_reader :id
  attr_accessor :name

  @@stages = {}
  @@total_rows = 0

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows +=1
  end

  def self.all
    @@stages.values
  end

  def self.clear
    @@stages = {}
  end

end
