class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :diceset
end
