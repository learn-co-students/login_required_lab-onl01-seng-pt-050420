class SecretsController < ApplicationController     

    def show 
        if session.include? :name 
            render '/sessions/new'
        else 
            redirect_to '/login'
        end 
    end 

end 