class ProductsController < ApplicationController
  before_filter :find_claimPlace
  before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @product = @claimPlace.products.build
  end

  def create
    @product = @claimPlace.products.new(product_params)
    @product.owner = current_user
    @product.user = current_user
    @product.totalScore = @product.fragrance + @product.flavor + @product.aftertaste + @product.acidity + @product.body + @product.uniformity + @product.balance + @product.cleanCup + @product.sweetness + @product.overall - @product.taint - @product.fault

    #Rails.logger.debug("totalScore!: #{@product.inspect}")
    if @product.save
      redirect_to claim_place_path(@claimPlace)
    else
      render :new
    end
  end

  def edit
    @product = current_user.products.find(params[:id])
  end


  def update
    @product = current_user.products.find(params[:id])
    @product.totalScore = @product.fragrance + @product.flavor + @product.aftertaste + @product.acidity + @product.body + @product.uniformity + @product.balance + @product.cleanCup + @product.sweetness + @product.overall - @product.taint - @product.fault
    Rails.logger.debug("fragrance!: #{@product.totalScore}")

    if @product.update_attributes(product_params)
      redirect_to claim_place_path(@claimPlace)
    else
      render :edit
    end
  end

  def destroy
    @product = current_user.products.find(params[:id])
    @product.destroy

    redirect_to claim_place_path(@claimPlace)
  end

  private

  def find_claimPlace
    @claimPlace = ClaimPlace.find(params[:claim_place_id])
  end

  def product_params
    params.require(:product).permit(:productName, :fragrance, :flavor, :aftertaste, :acidity, :body, :balance, :uniformity, :cleanCup, :sweetness, :overall, :taint, :fault, :description)
  end

end
