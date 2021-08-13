class AddDiceSetIdToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_reference :workouts, :dice_set, index: true
  end
end
