class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :exercises
  has_many :exercises
end
