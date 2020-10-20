class SecretsController < ApplicationController
  helper_method :current_user
  before_action :require_login

  def index
  end

  def show
  end

  private
  def require_login
    unless session.include? :name
      redirect_to :login
    end
  end
end
