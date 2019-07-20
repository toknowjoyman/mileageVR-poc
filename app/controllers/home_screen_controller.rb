class HomeScreenController < ApplicationController
  def index
    @count = Meal.count
    gon.count = @count
    # gon.firstDay= Meal[1].created_at
  end
end
