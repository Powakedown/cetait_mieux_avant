# Represents an asset bar in the graphic with computed positioning
class AssetBar
  PIXELS_PER_DECADE = 120

  def initialize(asset)
    @asset = asset
    @max_decade = TimelineGraphic::MAX_DECADE
  end

  def left_pos
    [start_pos, end_pos].min
  end

  def bar_width
    (start_pos - end_pos).abs
  end

  def start_pos
    ((@max_decade - start_year) / 10.0) * PIXELS_PER_DECADE
  end

  def end_pos
    ((@max_decade - end_year) / 10.0) * PIXELS_PER_DECADE
  end

  def start_year
    @asset.start_year.to_i
  end

  def end_year
    (@asset.end_year || DateTime.now.year).to_i
  end

  def asset
    @asset
  end
end
