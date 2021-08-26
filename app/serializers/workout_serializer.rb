class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :side, :workouts
  has_many :exercises
end
