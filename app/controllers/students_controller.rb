class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def update
    @student = Student.find(params[:id]) #finding the student per their id
    @student.active == false ? @student.active = true : @student.active = false
    @student.save

    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end



end
