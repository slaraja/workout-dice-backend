class DiceSetsController < ApplicationController

    def index
        dice_sets = DiceSet.all
        render json: dice_sets
    end
end
