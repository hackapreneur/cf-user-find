class UsersController < ApplicationController
  def index
  	@user = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  
  	if @user.save
  		flash[:notice] = "User Saved."
  		redirect_to users_url
  	else
  		render 'new'
  	end

  end

  private
  def user_params
  	params.require(:user).permit(:email, :name)
  end


end
