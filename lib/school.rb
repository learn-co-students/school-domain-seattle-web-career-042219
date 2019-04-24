# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, year)
    roster[year] ||= []
    roster[year] << student
  end

  def grade(year)
    roster[year]
  end

  def sort
    my_hash = {}
    roster.each do |year, student|
      my_hash[year] = student.sort
    end
    my_hash
  end


end
