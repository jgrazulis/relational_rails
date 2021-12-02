class Vineyards < ApplicationController
  def index
    binding.pry
    @vineyards = Vineyard.all
  end


end
