class DestinationsController < ApplicationController
  def index
    @continent = Continent.find(params[:continent_id])
    @destinations = @continent.destinations

  end
  def new
    @continent = Continent.find(params[:continent_id])
    @destination = @continent.destinations.new
  end
  def create
    @continent = Continent.find(params[:continent_id])
    @destination = @continent.destinations.create(destination_params)
    redirect_to continent_destinations_path(@continent)
  end
  def show
    @continent = Continent.find(params[:continent_id])
    @destination = @continent.destinations.find(params[:id])
  end
  def edit
    @continent = Continent.find(params[:continent_id])
    @destination = Destination.find(params[:id])
  end
  def update
    @continent = Continent.find(params[:continent_id])

    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    redirect_to destination_activities_path(@destination)
  end
  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to root_path
  end
private
  def destination_params
   params.require(:destination).permit(:location, :description, :img_url, :continent_id)
  end
end
