class DestinationsController < ApplicationController
  def index
    @continents = Continent.all
    @destinations = Destination.all
  end
  def show
    @destination = Destination.find(params[:id])

  end
  def new
    @continent = Continent.find(params[:continent_id])
    @destination = Destination.new
  end
  def create
    @continent = Continent.find(params[:continent_id])
    @destination = @continent.destinations.create(destination_params)
    redirect_to destination_path(@destination)
  end
  def edit
    @destination = Destination.find(params[:id])
  end
  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    redirect_to destination_path(@destination)
  end
  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to destinations_path
  end
private
  def destination_params
   params.require(:destination).permit(:location, :description, :img_url, :continent_id)
  end
end
