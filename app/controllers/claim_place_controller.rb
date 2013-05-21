class ClaimPlaceController < ApplicationController
  def index
    @claimPlace = ClaimPlace.all

    respond_to do |format|
      format.html #index.html.erb.erb
      format.xml {render :xml => @claimPlace}
    end
  end

  def new

  end

  def create
    @claimPlace = ClaimPlace.new(params[:claim_place])
  end
end
