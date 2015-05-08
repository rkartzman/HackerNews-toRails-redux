class AuthController < ApplicationController
  def signup
  end 

  def login
  end 

  def post_signup
    user = User.create(user_params);
    session[:user_id] = user.id 
    # redirect 
  end 

  def post_login
    user = User.find_by({email: params[:user][:email]})
    session[:user_id] = user.id 
    redirect_to '/' 
  end 

  def logout
    session.clear
    redirect_to '/'
  end 

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end 


end 