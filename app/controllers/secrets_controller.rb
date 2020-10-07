class SecretsController < ApplicationController
  before_action :logged_in?, only: [:show]

  def index
    current_user
  end

  def show
    current_user
  end

  private

  def logged_in?
    if current_user
      return current_user
    else
      redirect_to '/login'
    end

  end

end
