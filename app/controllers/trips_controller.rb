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
    p = Participant.where(name: params[:participant][:name])
    if p.empty?
      p = Participant.create(name: params[:participant][:name])
    end
    Link.create(trip_id: params[:trip_id], participant_id: p.id)
    redirect_to root_path
  end

  def show
    @trip = Trip.find(params[:id])

    # liste des participants au trip
    @participants = []
    @trip.participates.each do |p|
      @participants << p.participant
    end

    # @participant = Participant.new
  end

  def destroy 
    trip = trip.find(params[:id])
    trip.destroy
    redirect_to trips_path, method: :get
  end 

  private

  def trip_params
    params.require(:trip).permit(:creator, :destination, :budget)
  end

end
