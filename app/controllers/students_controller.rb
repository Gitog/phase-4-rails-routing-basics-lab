class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades
       studentsgrades = Student.all.order(grade: :desc)
       render json: studentsgrades
    end

end
