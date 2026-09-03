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
#
# Indexes
#
#  index_comments_on_asset_id             (asset_id)
#  index_comments_on_asset_id_and_era_id  (asset_id,era_id) UNIQUE
#  index_comments_on_era_id               (era_id)
#
require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'associations' do
    it { should belong_to(:asset) }
    it { should belong_to(:era) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }

    describe 'uniqueness' do
      let(:asset) { Asset.create!(name: "Test", comment: "c", source: "s", start_year: "2000", order: 1, color: "#048A81", type: "progress") }
      let(:era) { Era.create!(name: "Test era") }

      it 'validates uniqueness of asset_id scoped to era_id' do
        Comment.create!(asset: asset, era: era, description: "first")
        duplicate = Comment.new(asset: asset, era: era, description: "second")
        expect(duplicate).not_to be_valid
      end
    end
  end

  describe 'database columns' do
    it { should have_db_column(:asset_id).of_type(:integer) }
    it { should have_db_column(:era_id).of_type(:integer) }
    it { should have_db_column(:description).of_type(:string) }
  end

  describe 'indexes' do
    it { should have_db_index(%i[asset_id era_id]).unique(true) }
  end
end
