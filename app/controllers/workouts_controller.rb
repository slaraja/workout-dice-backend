class WorkoutsController < ApplicationController

    def index
        dice_sets = DiceSet.all
        render json: dice_sets, include: :workouts
    end

    def show 
        dice_set = DiceSet.find(params[:id])
        render json: dice_set
    end
end
