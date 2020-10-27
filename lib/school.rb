class School

    attr_accessor :student, :class, :grade
    attr_reader :school_name, :roster

    def initialize(school_name)
        @school_name= school_name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.key?(grade) 
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
       @sorted_roster = {}
        @roster.each do |grade, student|
            @sorted_roster[grade] = student.sort
        end
        @sorted_roster
    end
end