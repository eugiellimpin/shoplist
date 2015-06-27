class ShopsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  load_and_authorize_resource

  def index
    @shops = Shop.order('lower(name)')
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      redirect_to @shop
    else
      render 'new'
    end
  end

  def update
    if @shop.update(shop_params)
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path
  end

  private
    def shop_params
      params.require(:shop).permit(:name, :description, :facebook, :instagram, :website, :cover, :cover_cache)
    end
end
