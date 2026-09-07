class Bonus < ApplicationRecord
  has_many :era_bonuses, class_name: "EraBonus", dependent: :destroy
  has_many :eras, through: :era_bonuses

  validates_presence_of :name
  validates :name, uniqueness: true
end
