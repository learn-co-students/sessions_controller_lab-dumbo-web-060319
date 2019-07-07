class SessionsController < ApplicationController
  def new

  end

  def create
    # byebug
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    # byebug
    session.delete(:name)
    redirect_to login_path
  end

end

