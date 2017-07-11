class SessionsController < ApplicationController

  def new

  end

  def create
    case params[:name]
    when nil
      redirect_to new_session_path
    when ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
