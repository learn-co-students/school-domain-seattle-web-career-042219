
require 'pry'

class School
attr_accessor :roster
attr_reader :name



  def initialize(roster)

    @roster = {}
    @name = name

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
           new_hash = {}
           @roster.each do |keys, values|
               new_hash[keys] = values.sort
           end
           return new_hash
       end

    end
