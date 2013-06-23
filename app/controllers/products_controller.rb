class ProductsController < ApplicationController
  before_action :find_claimPlace
  before_action :login_required, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @product = @claimPlace.products.build
  end

  def create
    @product = @claimPlace.products.new(product_params)

    if @product.save
      redirect_to claim_place_path(@claimPlace)
    else
      render :new
    end
  end

  def edit
    @product = @claimPlace.products.find(params[:id])
  end

  def update
    @product = @claimPlace.products.find(params[:id])

    if @product.update(product_params)
      redirect_to claim_place_path(@claimPlace)
    else
      render :edit
    end
  end

  def destroy
    @product = @claimPlace.products.find(params[:id])

    @product.destroy

    redirect_to claim_place_path(@claimPlace)
  end

  private

  def find_claimPlace
    @claimPlace = ClaimPlace.find(params[:claim_place_id])
  end

  def product_params
    params.require(:product).permit(:productName)
  end

end
