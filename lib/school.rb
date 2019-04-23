class School
    attr_accessor :name, :grade, :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)

        if @roster[grade] == nil
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
    
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        
        @roster.each { |key, value|
            sorted_hash[key] = value.sort
        }
        return sorted_hash
    end
end