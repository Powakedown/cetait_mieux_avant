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
require "test_helper"

class AssetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
