class StudentsController < ApplicationController
  def index
    @cohort = current_student.cohort
    @student = Student.find(current_student.id)
    @student_pitches = current_student.pitches
    @pitches = Pitch.all
  end

  def show
    @student = Student.find(params[:id])
  end
end
