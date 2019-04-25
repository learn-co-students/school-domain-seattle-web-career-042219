class School

attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grades)
    roster[grades] ||= []
    roster[grades] << name
  end

  def grade(grades)
    roster[grades]
  end

  def sort
    sorted = {}
    roster.each do |grades, name|
      sorted[grades] = name.sort
    end
    sorted
  end
end





#roster = {}
#roster["9"] = []
#roster["10"] = []
#roster["11"] = []
