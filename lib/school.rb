# code here!
class School
ROSTER = {}

  def initialize(name)
    @name = name
  end

  def add_student(name, grade)
    if ROSTER[grade] == nil
      ROSTER[grade] = []
      ROSTER[grade] << name
    else
      if !ROSTER[grade].include?(name)
        ROSTER[grade] << name
      end
    end
  end

  def roster
    ROSTER
  end

  def grade(grade)
    ROSTER[grade]
  end

  def sort
    ROSTER.each do |grade, students|
      students.sort!
    end
  end








end
