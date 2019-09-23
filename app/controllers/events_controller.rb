class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
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
    
end