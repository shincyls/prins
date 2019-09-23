class PollVotersController < ApplicationController

    def index
    end

    def new
    end

    def evote
        respond_to :html, :js
        if PollVoter.exists?(evote_code: params[:poll_voter][:evote_code])
            @poll_voter = PollVoter.find_by(evote_code: params[:poll_voter][:evote_code])
            redirect_to event_path(@poll_voter.event.id)
            flash.now[:success] = "You have successfully access to the event polling session."
            # render template: "/events/#{event_path(@poll_voter.event.id)}"
        else
            flash.now[:warning] = "eVote Code is not found."
        end
    end
    
end