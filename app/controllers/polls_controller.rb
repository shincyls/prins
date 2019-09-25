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
        
        if @poll.allow_votes
            if PollBank.exists?(poll_id: params[:id], poll_voter_id: session[:evote_id], poll_candidate_id: params[:can_id])
                # If Exist, goes into Toggle Mode
                @poll_bank = PollBank.find_by(poll_id: params[:id], poll_voter_id: session[:evote_id], poll_candidate_id: params[:can_id])
                if @poll_bank.active
                    # If it currently active, it can be toggled to false
                    @poll_bank.active = false
                    flash.now[:danger] = "You have Unvoted the Candidate."
                    @poll_bank.save
                else
                    # If it currently inactive, it need a exceed_vote_limit check before set back to active
                    if exceed_vote_limit
                        @poll_bank.active = true
                        flash.now[:success] = "You have Voted the Candidate."
                        @poll_bank.save
                    else
                        flash.now[:danger] = "The maximum candidate(s) vote for this poll is #{@poll.max_votes} only."
                    end
                end
            else
                # If Not Exist, goes into Creation Mode
                if exceed_vote_limit
                    @poll_bank = PollBank.new(poll_id: params[:id], poll_voter_id: session[:evote_id], poll_candidate_id: params[:can_id], active: true)
                    @poll_bank.save
                    flash.now[:success] = "You have Voted the candidate."
                else
                    flash.now[:danger] = "The maximum candidate(s) vote for this poll is #{@poll.max_votes} only."
                end
            end
        else
            flash.now[:danger] = "The Poll Session is Closing Now, voters are Unable to vote."
        end
    end

    def toggle
        respond_to :html, :js
        @poll = Poll.find(params[:id])
        @poll.allow_votes = !@poll.allow_votes
        @poll.save
        if @poll.allow_votes == true
            flash.now[:success] = "Polling Session is On now, voters are Able to vote."
        else @poll.allow_votes == false
            flash.now[:danger] = "Polling Session is Off now, voters are Unable to vote"
        end
    end

    def result
        respond_to :html, :js
        @poll = Poll.find(params[:id])
        @poll.poll_results = !@poll.poll_results
        @poll.save
        if @poll.poll_results == true
            flash.now[:success] = "Voter is now ABLE to see the result."
        else @poll.poll_results == false
            flash.now[:danger] = "Voter is now UNABLE to see the result."
        end
    end

    def refresh
        respond_to :html, :js
        @poll = Poll.find(params[:id])
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
        (PollBank.where(poll_id: params[:id], poll_voter_id: session[:evote_id], active: true).count + 1) <= (@poll.max_votes)
    end
    
end