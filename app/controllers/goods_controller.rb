class GoodsController < ApplicationController
  before_action :set_brand

  def create
    @good = Good.create(developer_id: current_developer.id, brand_id: params[:brand_id])
    @goods = Good.where(brand_id: @brand.id)
    @brands = Brand.all
  end

  def destroy
    good = Good.find_by(developer_id: current_developer.id, brand_id: params[:brand_id])
    good.destroy
    @goods = Good.where(brand_id: @brand.id)
    @brands = Brand.ApplicationController
  end

  private
  def set_brand
    @brand = Brand.find(params[:brand_id])
  end
end

# -----------------■■■ goodの非同期化にトライしたが、不可だった(1/5) ■■■------------------------------