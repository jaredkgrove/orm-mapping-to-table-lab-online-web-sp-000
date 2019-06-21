class Students
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    @name = name
    @grad = grade
    @id = id
  end

  def save

  end

  def self.create_table(name, grade, id)

  end

  def self.drop_table

  end
end
