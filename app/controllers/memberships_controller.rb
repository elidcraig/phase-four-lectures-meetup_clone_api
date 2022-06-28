class MembershipsController < ApplicationController
  def create
    membership = current_user.memberships.create(membership_params)
    if membership.valid?
      render json: membership, status: :created
    else
      render json: { errors: membership.errors }, status: :unprocessable_entity
    end
  end

  private

  def membership_params
    params.permit(:group_id)
  end
end
