class DressesController < ApplicationController

  require 'will_paginate/array'

  def index
    respond_to :html, :js
    @dresses = Dress.all.order("created_at desc")
    @dresses = @dresses.paginate(:page => params[:page], :per_page => 8)
  end

  def show
    respond_to :html, :js
    @dresses = Array.new
    if params[:query].empty? || params[:query] == "all"
      @dresses = Dress.all.order("created_at desc")
    else
      result = PgSearch.multisearch(params[:query])
      result.each do |r|
        @dresses << Dress.find(r.searchable_id)
      end
    end
    @dresses = @dresses.paginate(:page => params[:page], :per_page => 8)
  end

  def new
  end

  
  
end
