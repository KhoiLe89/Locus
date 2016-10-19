class ActivitiesController < ApplicationController
  def index
    @destination = Destination.find(params[:destination_id])
    @activities = @destination.activities

  end
  def show
    @activity = Activity.find(params[:id])
  end
  def new
    @destination= Destination.find(params[:destination_id])
    @activity = @destination.activities.new
  end
  def create
    @destination = Destination.find(params[:destination_id])
    @activity = @destination.activities.create(activities_params)
    redirect_to destination_activities_path(@destination)
  end
  def edit
    @activity = Activity.find(params[:id])
  end
  def update
    @activity = Activity.find(params[:id])
    @activity.update(activities_params)
    redirect_to activity_path(@activity)
  end
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to root_path
  end
private
  def activities_params
    params.require(:activity).permit(:name, :activity_type, :description, :price, :address, :img_url, :destination_id, :img_url2, :img_url3, :img_url4)
  end
end
