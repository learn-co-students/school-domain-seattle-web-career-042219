class School
attr_accessor :roster
attr_reader :name, :grade

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end


def add_student(name, grade)
  @name = name
  @grade = grade
  roster[grade] = [] if roster[grade] == nil
  roster[grade] << name
end

def grade(grade)
  roster[grade]
end

def sort
  roster.each { |grade, student_list| student_list.sort!}
end

end
