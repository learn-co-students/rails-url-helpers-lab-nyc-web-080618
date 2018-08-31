class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def active
    @student = Student.find(params[:id])
    # if @student.active == false
    #   @student.active = true
    # else
    #   @student.active = false
    # end
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)

  end
  def set_student
    @student = Student.find(params[:id])
  end
end
