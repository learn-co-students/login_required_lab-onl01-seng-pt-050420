class SecretsController < ApplicationController
  before_action :logged_in?, only: [:show]

  def index
    current_user
  end

  def show
    current_user
  end

end
