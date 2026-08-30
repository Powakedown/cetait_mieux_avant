# Handles the graphic sizing and styling for the timeline
class TimelineGraphic
  PIXELS_PER_DECADE = 120

  def initialize(assets)
    @assets = assets
    @max_decade = DateTime.now.year
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

  private

  def calculate_max_decade
    max_end_year = @assets.map(&:end_year).map(&:to_i).max || 0
    max_start_year = @assets.map(&:start_year).map(&:to_i).max || 0
    max_year = [max_end_year, max_start_year].max
    (max_year.to_f / 10).ceil * 10
  end
end
