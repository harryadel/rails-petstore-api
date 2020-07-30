class Api::V1::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def repond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :ok
  end

  # def create
  #   user = User.find_by_email(sign_in_params[:email])

  #   if user&.valid_password?(sign_in_params[:password])
  #     @current_user = user
  #   else
  #     render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
  #   end
  # end
end
