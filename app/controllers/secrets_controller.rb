class SecretsController < ApplicationController
    def show
        if session[:name]
        else
            redirect_to new_session_path
        end
    end

    def new
    end
end
