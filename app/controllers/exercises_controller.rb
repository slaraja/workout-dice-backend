class ExercisesController < ApplicationController

    def index
        workouts = Workout.all
        render json: workouts
    end

    def show
        set_workout
        render json: @workout
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
        set_workout
        workout.destroy
        render json: {message: 'Workout was deleted.'}
    end

    private

    def workout_params
        params.require(:workout).permit(:name, :id)
    end

    def set_workout
        @workout = Workout.find(params[:id])
    end

end
