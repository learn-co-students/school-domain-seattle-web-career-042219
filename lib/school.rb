# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster.map do |level, students_array|
      if level == grade
        return students_array
      end
    end
  end

  def sort
    sorted = {}
    @roster.each do |level, students_array|
      sorted[level] = students_array.sort
    end
    sorted
  end

end
