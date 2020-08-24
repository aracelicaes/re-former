class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def create
    @user = User.new(user_params)
    #@user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
        flash[:success] = "Object successfully created"
        redirect_to new_user_path
    else
        flash[:error] = "Something went wrong"
        render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
