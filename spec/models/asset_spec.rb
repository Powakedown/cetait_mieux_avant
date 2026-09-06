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
require 'rails_helper'

RSpec.describe Asset, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:comment) }
    it { should validate_presence_of(:source) }
    it { should validate_presence_of(:start_year) }
    it { should validate_presence_of(:order) }
    it { should validate_presence_of(:color) }
    it { should validate_inclusion_of(:color).in_array(%w[#048A81 #06D6A0 #54C6EB #8A89C0 #CDA2AB]) }
  end

  describe 'associations' do
    it { should have_many(:comments).dependent(:destroy) }
    it { should have_many(:eras).through(:comments) }
  end

  describe 'enum' do
    it 'defines type enum with progress, era and phenomenom' do
      expect(Asset.types).to eq(
        "progress" => "progress", "phenomenom" => "phenomenom"
      )
    end

    it 'does not use Single Table Inheritance' do
      expect(Asset.inheritance_column).to eq("")
      record = Asset.create!(name: "Test", comment: "c", source: "s", start_year: "2000",
                             order: 99, color: "#048A81", type: "progress")
      expect(record.class).to eq(Asset)
      expect(record).to be_progress
    end
  end

  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:comment).of_type(:string) }
    it { should have_db_column(:source).of_type(:string) }
    it { should have_db_column(:start_year).of_type(:string) }
    it { should have_db_column(:end_year).of_type(:string) }
    it { should have_db_column(:order).of_type(:integer) }
    it { should have_db_column(:type).of_type(:string) }
  end

  describe 'indexes' do
    it { should have_db_index(:type) }
  end
end
