class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :reps, :workout_id
end
