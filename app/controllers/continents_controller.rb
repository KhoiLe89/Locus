class ContinentsController < ApplicationController
  def index
    @continents = Continent.all
  end
  def show
    @continent = Continent.find(params[:id])
    
  end
end
