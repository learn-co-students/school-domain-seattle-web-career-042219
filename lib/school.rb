class School
    attr_accessor :name, :roster
   
    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted_hash={}
        @roster.each do |grade, students|
            sorted_hash[grade] = students.sort
        end
        sorted_hash
    end
end