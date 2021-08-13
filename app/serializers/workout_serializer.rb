class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :dice_set
end
