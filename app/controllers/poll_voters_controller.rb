class PollVotersController < ApplicationController

    def index
    end

    def new
    end

    def evote
        respond_to :html, :js
        if PollVoter.exists?(evote_code: params[:poll_voter][:evote_code])
            @poll_voter = PollVoter.find_by(evote_code: params[:poll_voter][:evote_code])
            session[:evote_id] = @poll_voter.id
            redirect_to event_path(@poll_voter.event.id), poll_voter: @poll_voter
            flash.now[:success] = "You have successfully login to our event polling session."
        else
            flash.now[:warning] = "This eVote Code is not found."
        end
    end

    def exit 
        session[:evote_id] = nil
        redirect_to polls_url, flash: { success: 'Exit eVote Session Successfully'}
    end
    
end