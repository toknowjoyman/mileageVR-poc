class HomeScreenController < ApplicationController
  def index
    @count = Meal.count
    gon.count = @count

    @meals = Meal.all
    gon.meals = @meals
    # @created_at = Meal.created_at
    # gon.created_at= @created_at
  end
end
