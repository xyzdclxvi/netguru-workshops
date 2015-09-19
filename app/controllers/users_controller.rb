class UsersController < ApplicationController
  expose(:user)
  expose(:reviews) { user.reviews }
  expose(:last_five_reviews) { reviews.reverse[0...5] }
  expose(:products) { user.products }
  
  def show
  end
  
  def show_user_products
    render 'products/index'
  end
  
  def show_user_reviews
    render 'reviews/index'
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email)
  end
end
