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
    :color,
    :end_year,
    :name,
    :order,
    :start_year,
    :source
    validates :color, inclusion: { in:
      %w[#048A81 #06D6A0 #54C6EB #8A89C0 #CDA2AB]
    }

  scope :displayable, -> { where(public: true).order(:order) }
end
