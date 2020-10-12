class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].nil?
            redirect_to login_path
        elsif params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end
