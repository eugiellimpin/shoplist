class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to @shop
  end

  private
    def shop_params
      params.require(:shop).permit(:name, :description)
    end
end
