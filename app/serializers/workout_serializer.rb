class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :exercises, :id
  has_many :exercises
end
