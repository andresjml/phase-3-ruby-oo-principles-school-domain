# code here!
class School
    def initialize(name)
        @name=name
        @roster={}
    end

    attr_reader :name
    attr_accessor :roster

    def add_student(student_name, grade)
       @roster[grade] ||= []

       @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted={}
        @roster.each do |grade,student_name|
            sorted[grade]=student_name.sort
        end
        sorted
    end
    
end