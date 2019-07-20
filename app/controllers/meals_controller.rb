class MealsController < ApplicationController

  def index
    @meals = Meal.all
    @count = Meal.count
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal= Meal.new
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params)

    @meal.save
    redirect_to @meal
  end

  def update
    @meal = Meal.find(params[:id])

    if @meal.update(meal_params)
      redirect_to @meal
    else
      render 'edit'
    end
  end

  def destroy
    @meal = Article.find(params[:id])
    @meal.destroy

    redirect_to meals_path
  end

  private
  def meal_params
    (params.require(:meal).permit(:title,:text))
  end

end
