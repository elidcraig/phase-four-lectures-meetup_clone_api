class EventsController < ApplicationController

  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id]), serializer: EventDetailSerializer
  end

  def create
    event = current_user.created_events.create!(event_params)
    render json: event, status: :created
  end

  def update
    event = Event.find(params[:id])
    event.update!(event_params)
    render json: event
  end

  def destroy
    Event.find(params[:id]).destroy
    head :no_content
  end

  private

  def event_params
    params.permit(:title, :description, :location, :starts_at, :ends_at, :group_id)
  end
end
