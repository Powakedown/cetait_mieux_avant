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
#  color      :string           default("neutral")
#  public     :boolean          default(TRUE), not null
#  validation :string           default("draft"), not null
#  type       :string
#
# Indexes
#
#  index_assets_on_type  (type)
#
class Asset < ApplicationRecord
  # `type` is used as a regular enum column, not for Single Table Inheritance
  self.inheritance_column = nil

  enum :type, {
    progress: "progress",
    phenomenom: "phenomenom",
    curse: "curse"
  }

  has_many :comments, dependent: :destroy
  has_many :eras, through: :comments

  validates_presence_of :comment,
    :color,
    :name,
    :order,
    :start_year,
    :source
  validates :color, inclusion: { in:
    %w[
      #048A81
      #06D6A0
      #54C6EB
      #8A89C0
      #CDA2AB
    ]
  }

  scope :displayable, -> { where(public: true).order(:order) }
end
