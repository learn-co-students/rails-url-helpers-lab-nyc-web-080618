require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active == true
      @status = "active"
    else
      @status = "inactive"
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.active == true
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to action: "show", id: @student.id
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
