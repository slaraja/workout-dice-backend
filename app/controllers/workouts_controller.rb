class WorkoutsController < ApplicationController

    def index
        workouts = Workout.all
        render json: workouts, include: :exercises
    end

    def show 
        workout = DiceSet.find(params[:id])
        render json: workout
    end
end
