class RsvpsController < ApplicationController
  def create
    rsvp = current_user.rsvps.create(rsvp_params)
    if rsvp.valid?
      render json: rsvp, status: :created
    else
      render json: { errors: rsvp.errors }, status: :unprocessable_entity
    end
  end

  private

  def rsvp_params
    params.permit(:event_id)
  end
end
