class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @cohorts = Cohort.active
  end

  def student_new
    @student = Student.new()
    render 'students/new'
  end

  def student_create
    @student = Student.new(student_params)
    if @student.save
      redirect_to admins_path
    else
      render 'students/new'
    end
  end

  def new
    @admin = Admin.new()
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def show
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to admins_path
    else
      render 'new'
    end
  end

  def destory
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :cohort_id)
  end

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password)
  end
end
