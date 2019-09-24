class PollsController < ApplicationController

    def index
        @poll_voter = PollVoter.new
    end

    def show
    end

    def new
    end

    # E-Vote user to vote here and all the rules and logics here
    def vote
        respond_to :html, :js
        @poll = Poll.find(params[:id])
        if PollBank.exists?(poll_id: params[:id], poll_voter_id: params[:voter_id], poll_candidate_id: params[:can_id])
            # If Exist, goes into Toggle Mode
            @poll_bank = PollBank.find_by(poll_id: params[:id], poll_voter_id: params[:voter_id], poll_candidate_id: params[:can_id])
            if @poll_bank.active
                # If it currently active, it can be toggled to false
                @poll_bank.active = false
                flash.now[:danger] = "You have DEVOTED the Candidate."
                @poll_bank.save
            else
                # If it currently inactive, it need a exceed_vote_limit check before set back to active
                if exceed_vote_limit
                    @poll_bank.active = true
                    flash.now[:success] = "You have VOTED the Candidate."
                    @poll_bank.save
                else
                    flash.now[:warning] = "The maximum candidate(s) vote for this poll is #{@poll.max_votes} only."
                end
            end
        else
            # If Not Exist, goes into Creation Mode
            if exceed_vote_limit
                @poll_bank = PollBank.new(poll_id: params[:id], poll_voter_id: params[:voter_id], poll_candidate_id: params[:can_id], active: true)
                @poll_bank.save
                flash.now[:success] = "You have VOTED the candidate."
            else
                flash.now[:warning] = "The maximum candidate(s) vote for this poll is #{@poll.max_votes} only."
            end
        end
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

    def exceed_vote_limit
        (PollBank.where(poll_id: params[:id], poll_voter_id: params[:voter_id], active: true).count + 1) <= (@poll.max_votes)
    end
    
end