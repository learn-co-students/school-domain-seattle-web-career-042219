class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster.each do |x, y|
      if x == grade
        return y
      end
    end
  end



def sort
  sorted_hash = {}
  roster.each do |x, y|
    sorted_hash[x] = y.sort
  end
  sorted_hash
end
end
