class Api::V1::WorkoutsController < ApplicationController

  def index 
    workouts = Workout.all 
    render json: workouts # instead of rendering erb file
  end 

  def create 
    workout = Workout.new(workout_params)
    if workout.save 
      render json: workout, status: :accepted 
    else 
      render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
    end 
  end 


  private

  def workout_params
    params.require(:workout).permit(:date, :sets, :reps, :weight, :client_id)
  end 

end
