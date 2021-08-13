class WorkoutsController < ApplicationController

    def index
        workouts = Workout.all
        render json: workouts
    end

    def show
        workout = Workout.find(params[:id])
    end

   #new action not needed because we're not rendering views
    def create
        workout = Workout.create(workout_params)
        if workout
            render json: workout
        else
            render json: {error: 'Workout was not created.'}
        end
    end

    def destroy
        workout = Workout.find(params[:id])
        workout.destroy
        render json: {message: 'Workout was deleted.'}
    end

    private

    def workout_params

    end


end
