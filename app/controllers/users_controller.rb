class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy


  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # successful save
      log_in @user
      flash[:success] = "Welcome to the assignment app!"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  def edit_pass

    @user = current_user

  end

  def verification
     @user = current_user
  end

  def update_veri
       @user = current_user
    if @user.update_attributes(user_veri_params)
      flash[:success] = "Profile updated"
      redirect_to setting_path
    else
      render 'verification'
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_info_params)
      flash[:success] = "Profile updated"
      redirect_to setting_path
    else
      render 'edit'
    end
  end

  
  def update_pass
    @user = current_user
    if @user.update_attributes(user_pass_params)
      flash[:success] = "Profile updated"
      redirect_to setting_path
    else
      render 'edit_pass'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end



  private
  def user_params
    params.require(:user).permit(:username,:phone, :email, :city, :password,
                                 :password_confirmation)
  end
  def user_info_params

      params.require(:user).permit(:username,:phone, :email, :city, :intro)

  end
   def user_veri_params

      params.require(:user).permit(:type,:cardnum)

  end

  def user_pass_params

      params.require(:user).permit(:password, :password_confirmation)

  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end

