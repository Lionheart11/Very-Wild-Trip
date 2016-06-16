class ParticipantsController < ApplicationController
  def new
    participant = Participant.new
  end
  
  def create
    @participant = Participant.new(participant_params)
    if @participant.save
    redirect_to participants_path, method: :get
    else
    render 'new'
    end
  end
  
  def index
    @participants = Participant.all
  end

  def edit
    @participant = Participant.find(params[:id])
  end

  def update
    @participant = Participant.find(params[:id])
    if @participant.update(participant_params)
      redirect_to participant_path @participant
    else
      render :edit
    end
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to participants_path
  end

  private
  def participant_params
    params.require(:participant).permit(:name)
  end

end
