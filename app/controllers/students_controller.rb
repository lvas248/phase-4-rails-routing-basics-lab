class StudentsController < ApplicationController
  
  def index
    render json: Student.all
  end

  def grades
    render json: Student.all.order(:grade).reverse
  end

  def highest_grade
    students = Student.all.order(:grade)
    render json: students.last
  end

end
