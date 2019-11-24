class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Logged In"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged Out"
  end
end
