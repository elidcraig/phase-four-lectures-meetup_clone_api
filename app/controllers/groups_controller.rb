class GroupsController < ApplicationController

  def index
    render json: Group.all
  end

  def show
    render json: Group.find( params[:id] )
  end

  def create
    group = Group.create( group_params )
    if group.valid?
      render json: group, status: :created
    else
      render json: { errors: group.errors }, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.permit(:name, :location)
  end
end
