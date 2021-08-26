class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :reps
  has_one :workout
end
