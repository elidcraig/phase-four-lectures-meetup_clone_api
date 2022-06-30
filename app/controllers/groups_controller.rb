class GroupsController < ApplicationController

  def index
    render json: Group.all
  end

  def show
    render json: Group.find( params[:id] ), serializer: GroupDetailSerializer
  end

  def create
    group = Group.create!( group_params )
    render json: group, status: :created
  end

  private

  def group_params
    params.permit(:name, :location)
  end
end
