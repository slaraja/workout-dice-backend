class AddDiceSetIdToWorkout < ActiveRecord::Migration[6.1]
  def change
    add_reference :workouts, :dice_set, index: true
  end
end
