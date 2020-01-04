class GoodsController < ApplicationController
  before_action :set_brand

  def create
    @good = Good.create(developer_id: current_developer.id, brand_id: params[:brand_id])
    @goods = Good.where(brand_id: params[:brand_id])
    @brand.reload
  end

  def destroy
    good = Good.find_by(developer_id: current_developer.id, brand_id: params[:brand_id])
    good.destroy
    @goods = Good.where(brand_id: params[:brand_id])
    @brand.reload
  end

  private
  def set_brand
    @brand = Brand.find(params[:brand_id])
  end

end

