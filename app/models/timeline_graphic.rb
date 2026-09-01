# Handles the graphic sizing and styling for the timeline
class TimelineGraphic
  PIXELS_PER_DECADE = 120
  MAX_DECADE = (DateTime.now.year / 10.0).ceil * 10

  def initialize
    @assets = Asset.order(:order) 
    @max_decade = MAX_DECADE
  end

  def max_decade
    @max_decade
  end

  def decades_count
    (@max_decade / 10).floor + 1
  end

  def asset_bars
    @asset_bars ||= @assets.map { |asset| AssetBar.new(asset) }
  end

  def min_width
    decades_count * PIXELS_PER_DECADE
  end
end
