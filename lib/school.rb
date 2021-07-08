# code here!
class School
  attr_accessor :name, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, number)
    if @roster[number] == nil
      @roster[number] = [name]
    else
      @roster[number] << name
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    sorted_hash = {}
    @roster.each { |k, v|
      sorted_hash[k] = v.sort
    }
    return sorted_hash
  end
end
