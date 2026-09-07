# == Schema Information
#
# Table name: eras
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  source      :string
#  question    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  start_year  :date
#  end_year    :date
#
class Era < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :assets, through: :comments
  has_many :era_bonuses, class_name: "EraBonus", dependent: :destroy
  has_many :bonuses, through: :era_bonuses

  validates_presence_of :name, :question
end
