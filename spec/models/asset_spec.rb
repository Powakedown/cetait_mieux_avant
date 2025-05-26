require 'rails_helper'

RSpec.describe Asset, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:comment) }
    it { should validate_presence_of(:source) }
    it { should validate_presence_of(:start_year) }
    it { should validate_presence_of(:end_year) }
    it { should validate_presence_of(:order) }
  end

  describe 'associations' do
    # Add any associations if necessary
  end

  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:comment).of_type(:string) }
    it { should have_db_column(:source).of_type(:string) }
    it { should have_db_column(:start_year).of_type(:string) }
    it { should have_db_column(:end_year).of_type(:string) }
    it { should have_db_column(:order).of_type(:integer) }
  end
end
