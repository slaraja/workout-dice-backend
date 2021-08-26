class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :workouts
  has_many :exercises
end
