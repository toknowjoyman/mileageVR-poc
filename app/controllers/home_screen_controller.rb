class HomeScreenController < ApplicationController
  def index
    @count = Meal.count
    gon.count = @count

    @meals = Meal.all
    gon.meals = @meals

    @current_user = current_user
    gon.current_user = @current_user

    @microposts = @current_user.microposts.all if logged_in?
    gon.microposts = @microposts if logged_in?

    @micropost = current_user.microposts.build if logged_in?
    # @created_at = Meal.created_at
    # gon.created_at= @created_at
  end
end
