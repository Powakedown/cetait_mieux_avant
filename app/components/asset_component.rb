class AssetComponent < ViewComponent::Base
  def initialize(asset:)
    @name = asset.name
  end
end
