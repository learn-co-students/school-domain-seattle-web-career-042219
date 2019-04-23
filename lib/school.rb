
require "pry"

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
      @roster[grade] << student

    else @roster[grade] << student
    end
  end

  def grade(grade)
    @roster.map do |key, value|
      if key == grade
        return value
      end
    end
  end

  def sort
      @roster.each do |key, value|
        @roster[key] = value.sort
      end
  end
end
