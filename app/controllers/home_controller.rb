class HomeController < ApplicationController
  def index
    @assets = Asset.order(:order)
  end
end
