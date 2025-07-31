class HomeController < ApplicationController
  def index
    @assets = Asset.all
  end
end
