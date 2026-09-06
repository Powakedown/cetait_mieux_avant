module ApplicationHelper
  # Retourne le tag image d'une era si l'asset existe dans le pipeline,
  # sinon un placeholder (initiale de l'era) pour éviter une AssetNotFound.
  def era_image_tag(slug, kind, alt:, classes:, size: nil)
    path = "era/#{kind}/#{slug}.png"
    if era_asset_exists?(path)
      image_tag(path, alt: alt, class: classes, **(size ? { width: size, height: size } : {}))
    else
      style = size ? "width:#{size}px;height:#{size}px" : "width:100%;height:100%"
      tag.span(slug.first.upcase, class: "#{classes} era-image-placeholder", style: style)
    end
  end

  private

  def era_asset_exists?(path)
    if Rails.application.assets
      Rails.application.assets.find_asset(path).present?
    else
      Rails.application.assets_manifest&.find(path).present?
    end
  end
end
