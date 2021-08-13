class DiceSetsController < ApplicationController

    def index
        dice_sets = DiceSet.all
        render json: dice_sets
    end

    def show 
        dice_set = DiceSet.find(params(:id))
        render json: dice_set
    end
end
