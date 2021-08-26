class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :workout
end
