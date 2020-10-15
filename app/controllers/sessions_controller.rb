class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil? || params[:name] == ""
            redirect_to new_session_path
        else 
            session[:name] = params[:name]
        end
    end

    def destroy
        session.clear unless session[:name].nil?
    end
end
