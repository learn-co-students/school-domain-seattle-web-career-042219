# code here!
require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(std_name, std_grade)
    @std_name = std_name
    @std_grade = std_grade

    if @roster[std_grade] == nil

    @roster[std_grade] = []
    @roster[std_grade] << std_name
    #binding.pry
    else
    @roster[std_grade] << std_name
  end

  end

  def roster
    @roster
  end

  def grade(grade_num)
    @roster[grade_num].uniq
  end


  def sort
    @roster.map do |grade, name_array|
      @roster[grade] = name_array.sort.flatten
    end
    @roster
  end

end
