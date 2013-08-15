class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      flash[:success] = "Successfully Logged In!"
      redirect_to root_path
   else
     flash[:error] = "Invalid email or password"
     render "new"
   end
 end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out."
    redirect_to root_path
  end
end
