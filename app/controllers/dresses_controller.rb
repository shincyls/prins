class DressesController < ApplicationController

  def index
    @dresses = Dress.all
  end

  def show
    respond_to :html, :js
    @dresses = Array.new
    result = PgSearch.multisearch(params[:query])

    result.each do |r|
      @dresses << Dress.find(r.searchable_id)
    end

    if @dresses.nil?
      @notice = "Result Not Found"
    end
  end

  def new
  end
  
end
