class School

    attr_accessor :name, :grade, :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        
        if @roster[grade] == nil
            @roster[grade] = [name] #if the roster is empty, shovels name into the array
        else
            @roster[grade] << name
        end
 
        # def grade(grade)
        #     @roster.collect do |cohort, names|
        #         if cohort == grade
        #             return names
        #         end
        #     end 
        # end

        def grade(grade)
            @roster[grade]
        end

        def sort
            new_hash = {}
            @roster.each do |keys, values|
                new_hash[keys] = values.sort
            end
            return new_hash
        end

    end

end