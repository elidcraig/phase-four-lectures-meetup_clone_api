class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordInvalid, with: :render_validation_errors
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def current_user
    User.first
  end

  def render_validation_errors e
    render json: { errors: e.record.errors }, status: :unprocessable_entity
  end

  def not_found e
    render json: { errors: e.record.errors }, status: :not_found
  end
end
