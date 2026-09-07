class EraBonus < ApplicationRecord
  belongs_to :era
  belongs_to :bonus

  validates_presence_of :description
  validates :era_id, uniqueness: { scope: :bonus_id }
end
