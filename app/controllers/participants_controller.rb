class ParticipantsController < ApplicationController
  def create
    @participant = Participant.new(sondage_params)
    @participant.save
  end
  def index
    @participants = Participant.all  
  end


  private
  def participant_params
    params.require(:participant)
    .permit(:name)
  end

end
