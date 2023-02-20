class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
     grades_order = Student.all.order(grade: :desc)
     render json: grades_order
    end

    def highest_grade
     students = Student.all
      max_grade = students.max_by do |student|
        student.grade
       end
       render json: max_grade
    end
end
