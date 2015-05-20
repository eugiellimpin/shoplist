class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to @shop
  end

  def update
    @shop = Shop.find(params[:id])

    if @shop.update(shop_params)
      redirect_to @shop
    else
      render 'edit'
    end
  end

  private
    def shop_params
      params.require(:shop).permit(:name, :description, :facebook, :instagram)
    end
end
