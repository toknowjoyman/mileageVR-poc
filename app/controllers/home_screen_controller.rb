class HomeScreenController < ApplicationController
  def index
    @count = Meal.count
  end
end
