class HomeController < ApplicationController
  def index
    @assets = Asset.where.not(type: "curse").order(:order)
    @eras = Era.includes(comments: :asset, era_bonuses: :bonus).order(:start_year)
  end
end
