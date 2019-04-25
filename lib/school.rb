class School
	attr_reader :name, :roster



	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if @roster[grade] != nil
		  @roster[grade] << name
		else
		  @roster[grade] = [name]
		end
	end

	def grade(grade_num)
		@roster[grade_num]
	end

	def sort
		sorted_hash = {}

		@roster.each do |grades, names|
			sorted_hash[grades] = names.sort
		end
		sorted_hash
	end

end

school = School.new("Bayside High School")