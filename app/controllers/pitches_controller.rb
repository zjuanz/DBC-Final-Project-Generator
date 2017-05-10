class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def new

  end

  def create
    @pitch = Pitch.create(pitch_params)
    if @pitch.save
      redirect_to pitches_path
    else
      @errors = ["Error saving"]
      render 'new'
    end
  end

private
  def pitch_params
    params.require(:pitch).permit(:name, :description, :student_id)
  end

end