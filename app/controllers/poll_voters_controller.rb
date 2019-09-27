class PollVotersController < ApplicationController

    def index
    end

    def new
    end

    def evote
        respond_to :html, :js
        @code = params[:poll_voter][:evote_code]
        @code.downcase!
        if PollVoter.exists?(evote_code: @code)
            @poll_voter = PollVoter.find_by(evote_code: @code)
            session[:evote_id] = @poll_voter.id
            redirect_to event_path(@poll_voter.event.id), poll_voter: @poll_voter
            flash.now[:success] = "You have successfully logged in to E-Vote Session. #{@code}"
        else
            flash.now[:warning] = "E-Vote Code is not found. a #{@code}"
        end
    end

    def destroy
        session[:evote_id] = nil
        redirect_to polls_url, flash: { success: 'Exit E-Vote Successfully'}
    end

    private

    def require_super
        unless logged_in? & current_user.super?
            flash.now[:warning] = "Super User required to peform this action."
        end
    end
    
end