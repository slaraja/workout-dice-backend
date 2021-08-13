dice_set_a = DiceSet.create(name: "Die 1", side: "1")
dice_set_b = DiceSet.create(name: "Die 2", side: "1")

workout_a = Workout.create(name: "Jumping Jacks", dice_set_id: 1)
workout_b = Workout.create(name: "Pushups", dice_set_id: 2)
