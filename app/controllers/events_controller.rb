class EventsController < ApplicationController

    before_action :validate_evote, only: [:show]

    def index
        @events = Event.all
    end

    def show
        respond_to :html, :js
        @event = Event.find(params[:id])
        @voter = PollVoter.find_by(id: session[:evote_id])
    end

    def new
    end

    def login
    end

    def create
    end

    def update
    end

    def destroy
    end

    private
    
    def validate_evote
      unless PollVoter.find_by(id: session[:evote_id])
        redirect_to polls_path
        flash.now[:warning] = "Please use evote code to access."
      end
    end
    
end