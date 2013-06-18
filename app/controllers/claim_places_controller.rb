class ClaimPlacesController < ApplicationController
  include ActiveModel::ForbiddenAttributesProtection

  def index
    @claimPlace = ClaimPlace.all
    
    respond_to do |format|
     format.html #index.html.erb.erb
     format.xml {render :xml => @claimPlace}
     format.json { render :json => @claimPlace.to_json }
    end
  end

  def show
    @claimPlace = ClaimPlace.find(params[:id])
  end

  def new
    @claimPlace = ClaimPlace.new
  end

  def create
    @claimPlace = ClaimPlace.new(claim_place_params)
    # raw_params = params[:claim_place]
    # @claimPlace = ClaimPlace.create(raw_params.permit(:storeName, :address, :ownerPhone, :ownerEmail, :ownerWebsite, :owner, :description))
    @claimPlace = ClaimPlace.new(claim_place_params)

    Rails.logger.debug("ClaimPlace!: #{@claimPlace.inspect}")
    # Rails.logger.debug("CurrentUserId:#{{current_user.id}")"}")
    # Rails.logger.debug("Params : #{params[:claim_place_params]}")

    if @claimPlace.save
      Rails.logger.debug("ClaimPlace was saved !!!")
      redirect_to claim_places_path
    else
      Rails.logger.debug("ClaimPlace wasn't saved !!!")

      render :new
    end
  end

  def edit
    @claimPlace = ClaimPlace.find(params[:id])
  end

  # form被包成一個hash，如果能夠接參數進行更新及儲存
  # 就會重導到 SHOW ACTION 失敗則退回到 EDIT ACTION
  def update
    @claimPlace = ClaimPlace.find(params[:id])

    if @claimPlace.update(claim_place_params)
      redirect_to claim_place_path(@claimPlace)
    else
      render :edit
    end
  end

  def destroy
    @claimPlace = ClaimPlace.find(params[:id])

    @claimPlace.destroy

    redirect_to claim_place_path
  end


  private
    def claim_place_params
      params.require(:claim_place).permit(:storeName, :address, :ownerPhone, :ownerEmail, :ownerWebsite, :owner, :description)
      # params[:claim_place].slice(:storeName, :address, :ownerEmail, :ownerPhone, :description, :owner, :ownerWebsite)
    end



end
