class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new 
  end

  def create
    @trip = Trip.new(trip_params)
     if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end
  
  def add_participant
    trip = Trip.find(params[:id])
    participant = Participant.find_by(name: params[:participant][:name])
    
    if participant.nil?
      participant = Participant.new
      participant.name = params[:participant][:name]
    end

    unless participant.trips.include? trip
      participant.trips << trip 
      end
    participant.save
    redirect_to trip_path
  end

  def show
    @trip = Trip.find(params[:id])
    @participants = @trip.participants 

    # liste des participants au trip
    # @participants = @trip.participates

    # @participant = Participant.new
  end

  def destroy 
    trip = trip.find(params[:id])
    redirect_to trips_path, method: :get
  end 

end
