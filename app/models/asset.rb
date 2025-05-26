# == Schema Information
#
# Table name: assets
#
#  id         :bigint           not null, primary key
#  name       :string
#  comment    :string
#  source     :string
#  start_year :string
#  end_year   :string
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Asset < ApplicationRecord
  validates_presence_of :comment,
    :end_year,
    :name,
    :order,
    :start_year,
    :source
end
