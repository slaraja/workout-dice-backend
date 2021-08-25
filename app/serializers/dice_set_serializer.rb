class DiceSetSerializer < ActiveModel::Serializer
  attributes :id, :name, :side, :workouts
  has_many :workouts
end
