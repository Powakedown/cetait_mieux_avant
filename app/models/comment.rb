# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  asset_id    :bigint           not null
#  era_id      :bigint           not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  coming      :boolean          default(FALSE), not null
#
# Indexes
#
#  index_comments_on_asset_id             (asset_id)
#  index_comments_on_asset_id_and_era_id  (asset_id,era_id) UNIQUE
#  index_comments_on_era_id               (era_id)
#
class Comment < ApplicationRecord
  belongs_to :asset
  belongs_to :era

  validates_presence_of :description
  validates :asset_id, uniqueness: { scope: :era_id }
end
