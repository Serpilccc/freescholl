class UsersController < ApplicationController
 
 before_action :authenticate_user!, only: [:show]
  def index
  end

  def show
  	@user = User.find(params[:id])
  end



  def edit 
    @user = User.find(params[:id])
  end

def update 
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
      else 
      render 'edit'
  end
end

  def private

def set_user
end

     def user_params
      params.require(:user).permit(:image, :username, :fac, :formation, :niveau)
    end
end

end
