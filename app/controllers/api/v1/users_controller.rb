class Api::V1::UsersController < Api::BaseController
  def index
    @users = User.all
    render json: @users
  end
end
