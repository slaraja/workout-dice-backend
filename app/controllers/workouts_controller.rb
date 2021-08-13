class WorkoutsController < ApplicationController

    def index
        workouts = Workout.all
        render json: workouts
    end

    def show
        workout = Workout.find(params[:id])
    end

    def create

    end

    private

    def workout_params

    end


end
