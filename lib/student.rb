class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    self.name = name
    self.grade = grade
    @id = id
  end

  def save
    puts self.name
    puts self.grade
    sql =  <<-SQL
      INSERT INTO students (name, grade)
      VALUES ('josh', '11th')
    SQL
    DB[:conn].execute(sql)#, self.name, self.grade)
  end

  def self.create(name:, grade:)
    #self.tap{|song| song.new(name, grade).save}
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "DROP TABLE students"
    DB[:conn].execute(sql)
  end
end
