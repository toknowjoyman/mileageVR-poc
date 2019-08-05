class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Meal Tracked. You saved 500 Gallons of water"
      redirect_to root_url
    else
      flash[:danger] = "Please enter title "
      redirect_to root_url

    end
  end

  def index
    @microposts = current_user.microposts.all
    @count = current_user.microposts.count
  end

  def destroy
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end
end
