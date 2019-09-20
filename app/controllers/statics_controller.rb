class StaticsController < ApplicationController

    def index
        redirect_to registers_path if logged_in?
    end

    

    def login
        respond_to :html, :js
    end

    def show
        respond_to :html, :js
    end
    
end