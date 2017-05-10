class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def new

  end

  def create
    @pitch = Pitch.create(name: params["pitch"]["name"],description: params["pitch"]["description"],  student_id: params["pitch"]["student_id"])
    if @pitch.save
      redirect_to pitches_path
    else
      @errors = ["Error saving"]
      render 'new'
    end
  end

private
  # def pitch_params
  #   params.require(:pitch).permit(:name, :description)
  # end

end