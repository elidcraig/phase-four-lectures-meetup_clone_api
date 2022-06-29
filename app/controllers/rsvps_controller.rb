class RsvpsController < ApplicationController
  def create
    rsvp = current_user.rsvps.create!(rsvp_params)
    render json: rsvp, status: :created
  end
  
  def update
    rsvp = Rsvp.find(params[:id])
    rsvp.update!(rsvp_update_params)
    render json: rsvp
  end

  def destroy
    Rsvp.find(params[:id]).destroy
  end

  private

  def rsvp_params
    params.permit(:event_id)
  end

  def rsvp_update_params
    params.permit(:attended)
  end
end
