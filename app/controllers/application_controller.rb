class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordInvalid, with: :render_validation_errors

  private

  def current_user
    User.first
  end

  def render_validation_errors e
    render json: { errors: e.record.errors }, status: :unprocessable_entity
  end
end
