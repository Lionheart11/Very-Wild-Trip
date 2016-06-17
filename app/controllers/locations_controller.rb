class LocationsController < ApplicationController

  def new
    @location = Location.new
  end

  def create 
    location = Location.new(location_params)
    if location.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @location = Location.find(params[:id])
    forecast = ForecastIO.forecast(@location.latitude, @location.longitude)
    # binding.pry
    @temperature = ((forecast.currently.temperature - 32) * 5 / 9).round(1)
    @icon = forecast.currently.icon
  end

  private

  def location_params
    params.require(:location).permit(:name)
  end

end


