class StudentsController < ApplicationController
  def new
    @student = Student.new()
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "Student successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password)
  end

end
