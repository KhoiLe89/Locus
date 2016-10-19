class ContinentController < ApplicationController
  def index
    @continents = Continent.all
  end
  def show
    @continent = Continent.find(params[:id])
  end
  def new
    @continent = Continent.new
  end
  def create
    
  end
  def edit
  end
  def update
  end
end
