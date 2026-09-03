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
require 'rails_helper'

RSpec.describe Era, type: :model do
  describe 'associations' do
    it { should have_many(:comments).dependent(:destroy) }
    it { should have_many(:assets).through(:comments) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:description).of_type(:string) }
    it { should have_db_column(:source).of_type(:string) }
    it { should have_db_column(:question).of_type(:string) }
    it { should have_db_column(:start_year).of_type(:date) }
    it { should have_db_column(:end_year).of_type(:date) }
  end
end
