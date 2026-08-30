require 'rails_helper'

RSpec.describe AssetBar do
  let(:asset) { Asset.new(start_year: '2000', end_year: '2010') }
  let(:max_decade) { 2020 }
  let(:asset_bar) { described_class.new(asset, max_decade) }

  describe '#left_pos' do
    it 'calculates the left position based on start_year and end_year' do
      # With start_year=2000, end_year=2010, max_decade=2020
      # start_pos = ((2020 - 2000) / 10.0) * 120 = (20/10)*120 = 240
      # end_pos = ((2020 - 2010) / 10.0) * 120 = (10/10)*120 = 120
      # left_pos = [240, 120].min = 120
      expect(asset_bar.left_pos).to eq(120)
    end
  end

  describe '#bar_width' do
    it 'calculates the width of the bar' do
      # start_pos = 240, end_pos = 120
      # bar_width = (240 - 120).abs = 120
      expect(asset_bar.bar_width).to eq(120)
    end
  end

  describe '#asset' do
    it 'returns the asset' do
      expect(asset_bar.asset).to eq(asset)
    end
  end

  context 'when asset has end_year in the future' do
    let(:asset) { Asset.new(start_year: '2000', end_year: nil) }

    it 'uses current year for end_year calculation' do
      current_year = Date.today.year
      asset_bar = described_class.new(asset, max_decade)
      # end_pos = ((max_decade - current_year) / 10.0) * 120
      # This will be close to max_decade
      expect(asset_bar.end_year).to eq(current_year)
    end
  end
end
