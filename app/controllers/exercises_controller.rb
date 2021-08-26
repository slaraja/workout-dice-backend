class ExercisesController < ApplicationController

    def index
        exercises = Exercise.all
        render json: exercises
    end

    def show
        set_exercise
        render json: @exercise
    end

   #new action not needed because we're not rendering views
    def create
        exercise = Exercise.create(exercise_params)
        if exercise
            render json: exercise
        else
            render json: {error: 'Workout was not created.'}
        end
    end

    def destroy
        set_exercise
        exercise.destroy
        render json: {message: 'Workout was deleted.'}
    end

    private

    def exercise_params
        params.require(:exercise).permit(:name, :id)
    end

    def set_exercise
        @exercise = Exercise.find(params[:id])
    end

end
