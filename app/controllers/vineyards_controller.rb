class VineyardsController < ApplicationController
  def index
    @vineyards = Vineyard.all
  end
end
