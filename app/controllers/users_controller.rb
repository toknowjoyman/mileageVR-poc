class UsersController < ApplicationController

  # before_action :logged_in_user, only: [:edit, :update]
  # before_action :correct_user,   only: [:edit, :update]


  def show
    @user = User.find(params[:id])
    # @microposts = @user.microposts.paginate(page: params[:page])

    # debugger
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the αpp"
      redirect_to home_screen_index_url
    else
      render 'new'
    end
  end

##(moved to ApplicationController)
  # #Confirms a logged-in user.
  # def logged_in_user
  #   unless logged_in?
  #     flash[:danger] = "Please log in."
  #     redirect_to login_url
  #   end
  # end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation)
  end
end
