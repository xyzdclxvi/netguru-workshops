class UsersController < ApplicationController
  expose(:user)
  expose(:last_five_reviews) { user.reviews[0...5] }
  
  def show
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email)
  end
end
