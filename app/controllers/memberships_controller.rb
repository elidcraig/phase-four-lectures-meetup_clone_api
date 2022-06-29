class MembershipsController < ApplicationController
  def create
    membership = current_user.memberships.create!(membership_params)
    render json: membership, status: :created
  end

  def destroy
    Membership.find(params[:id]).destroy
    head :no_content
  end

  private

  def membership_params
    params.permit(:group_id)
  end
end
