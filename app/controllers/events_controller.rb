class EventsController < ApplicationController

    before_action :validate_evote, only: [:show]
    before_action :require_super, only: [:toggle, :new, :create, :update, :destroy]

    def index
        @events = Event.all
    end

    def show
        respond_to :html, :js
        @event = Event.find(params[:id])
        @voter = PollVoter.find_by(id: session[:evote_id])
    end
    
    # Super User Only
    def toggle
        respond_to :html, :js
        @event = Poll.find(params[:id])
        @event.evoting = !@poll.evoting
        @event.save
    end

    def details
        respond_to :html, :js
        @event = Event.find(params[:id])
    end

    def new
    end

    def create
    end

    def update
    end

    def destroy
    end

    private
    
    def validate_evote
      if logged_in?
        return true
      else
        unless PollVoter.find_by(id: session[:evote_id])
            redirect_to polls_path
            flash.now[:warning] = "Please use evote code to access."
        end
      end
    end

    def require_super
        unless current_user.super?
            flash.now[:warning] = "Super User required to peform this action."
        end
    end
    
end