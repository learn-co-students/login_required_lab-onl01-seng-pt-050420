class SessionsController < ApplicationController
  before_action :require_login

  def new
  end

  def index
  end
 
  def create
    if params[:name] != nil && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
  end

  private
 
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end