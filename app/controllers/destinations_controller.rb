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
    @destination = Destination.find if params[:destination_id] == params[:destination_id]

    @activity = Activity.find(params[:id])
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
