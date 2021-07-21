class Stage
  attr_reader :id
  attr_accessor :name

  @@stages = {}
  @@total_rows = 0

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows +=1
  end

  def ==(stage_to_compare)
    self.name() == stage_to_compare.name()
  end

  def self.all
    @@stages.values
  end

  def self.clear
    @@stages = {}
    @@total_rows = 0
  end

  def save
    @@stages[self.id] = Stage.new(self.name, self.id)
  end

end
