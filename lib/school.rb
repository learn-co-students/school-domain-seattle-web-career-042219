# code here!
class School
	attr_accessor :roster
	attr_reader :name

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(*student)
		@roster[student[1]] ||= []
		@roster[student[1]] << student[0]
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each_value do |students|
			students.sort!
		end
	end
end