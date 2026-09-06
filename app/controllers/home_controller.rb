class HomeController < ApplicationController
  def index
    @assets = Asset.order(:order)
    @eras = Era.includes(comments: :asset).all
  end
end
