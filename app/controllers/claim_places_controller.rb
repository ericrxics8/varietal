class ClaimPlacesController < ApplicationController
  def index
    @claimPlace = ClaimPlace.all
    #
    #respond_to do |format|
    #  format.html #index.html.erb.erb
    #  format.xml {render :xml => @claimPlace}
    #end
  end

  def show
    @claimPlace = ClaimPlace.find(params[:claim_places])
  end

  def new
    @claimPlace = ClaimPlace.new

  end

  def create
    @claimPlace = ClaimPlace.new(params[:claim_places])

    if @claimPlace.save
      redirect_to claim_place_path
    else
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
    params.require(:claim_places).permit(:title, :description)
  end



end
