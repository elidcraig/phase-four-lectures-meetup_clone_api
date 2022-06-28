class EventsController < ApplicationController

  def create
    event = current_user.created_events.create( event_params )
    if event.valid?
      render json: event, status: :created
    else
      render json: { errors: event.errors }, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.permit(:title, :description, :location, :starts_at, :ends_at, :group_id)
  end
end
