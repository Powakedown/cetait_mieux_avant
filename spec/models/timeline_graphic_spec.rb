require 'rails_helper'

RSpec.describe TimelineGraphic do
  let(:asset1) { Asset.new(start_year: '2000', end_year: '2010', order: 1) }
  let(:asset2) { Asset.new(start_year: '1990', end_year: '2005', order: 2) }
  let(:assets) { [asset1, asset2] }
  let(:graphic) { described_class.new(assets) }

  describe '#max_decade' do
    it 'calculates the maximum decade based on all assets' do
      # max_end_year = 2010, max_start_year = 2000
      # max_year = 2010
      # max_decade = (2010 / 10.0).ceil * 10 = 2010
      expect(graphic.max_decade).to eq(2010)
    end
  end

  describe '#decades_count' do
    it 'calculates the number of decades from year 0' do
      # max_decade = 2010
      # decades_count = (2010 / 10).floor + 1 = 201 + 1 = 202
      expect(graphic.decades_count).to eq(202)
    end
  end

  describe '#asset_bars' do
    it 'returns an array of AssetBar objects' do
      expect(graphic.asset_bars).to all(be_an(AssetBar))
      expect(graphic.asset_bars.length).to eq(2)
    end

    it 'passes the correct max_decade to each AssetBar' do
      graphic.asset_bars.each do |bar|
        expect(bar.instance_variable_get(:@max_decade)).to eq(graphic.max_decade)
      end
    end
  end

  describe '#min_width' do
    it 'calculates the minimum width based on decades_count' do
      # decades_count = 202, PIXELS_PER_DECADE = 120
      # min_width = 202 * 120 = 24240
      expect(graphic.min_width).to eq(24240)
    end
  end
end
