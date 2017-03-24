class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        # we have a real user
        session[:user_id] = user.id
        redirect_to root_path
      else
        # wrong password
        # binding.pry
        flash[:error] = "Error signing in. Please check your credentials and try again."
        render :new
      end
    else
      # binding.pry
      # no such user
      flash[:error] = "Error logging in. Please check your credentials and try again."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
