class StudentsController < ApplicationController

  def index 
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.order(grade: :desc)
    render json: grades
  end

end
