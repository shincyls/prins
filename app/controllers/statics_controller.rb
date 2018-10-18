class StaticsController < ApplicationController

    def index
        
        # if logged_in?
        #   redirect_to registers_path
        # else
        #   redirect_to root_url
        # end
    end

    def login
        respond_to :html, :js
    end

    def show
        respond_to :html, :js
    end
    
end