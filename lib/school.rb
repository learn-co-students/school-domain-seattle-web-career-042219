# code here!
class School
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
end
