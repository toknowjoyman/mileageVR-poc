class MealsController < ApplicationController

  def index
    @meals = Meal.all
    @count = Meal.count
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
  end

  def create
    @meal = Meal.new(meal_params)

    @meal.save
    redirect_to @meal
  end

  private
  def meal_params
    (params.require(:meal).permit(:title,:text))
  end

end
