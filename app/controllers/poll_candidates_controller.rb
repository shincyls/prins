class PollCandidatesController < ApplicationController

    def index
    end

    private

    unless current_user.super?
        flash.now[:warning] = "Super User required to peform this action."
    end
end
    
end