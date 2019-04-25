# code here!
class School
     
    attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sort_grade = {}
        roster.each do |grade, students|
            sort_grade[grade] = students.sort
        end
        sort_grade
    end
end