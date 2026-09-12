module ApplicationHelper
  # Retourne le tag image d'une era si l'asset existe dans le pipeline,
  # sinon un placeholder (initiale de l'era) pour éviter une AssetNotFound.
  def era_image_tag(slug, kind, alt:, classes:, size: nil)
    path = "era/#{kind}/#{slug}.png"
    if era_asset_exists?(path)
      image_tag(path, alt:, class: classes, **(size ? { width: size, height: size } : {}))
    else
      style = size ? "width:#{size}px;height:#{size}px" : "width:100%;height:100%"
      tag.span(slug.first.upcase, class: "#{classes} era-image-placeholder", style:)
    end
  end

  # Retourne le chemin de l'asset hero pour un background-image CSS,
  # ou nil si l'asset n'existe pas.
  def era_hero_path(slug)
    path = "era/hero/#{slug}.png"
    era_asset_exists?(path) ? asset_path(path) : nil
  end

  private

  def era_asset_exists?(path)
    manifest = Rails.application.assets_manifest
    return true if manifest&.assets&.key?(path)

    Rails.application.assets&.find_asset(path).present?
  end
end
