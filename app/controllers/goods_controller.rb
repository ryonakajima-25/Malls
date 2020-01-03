class GoodsController < ApplicationController
  before_action :set_brand 


  def create
    @good = Good.create(developer_id: current_developer.id, brand_id: @brand.id)
    @goods = Good.where(brand_id: @brand.id)
    # redirect_to brand_path(@good.brand_id)
  end

  def destroy
    @good = Good.find_by(developer_id: current_developer.id, brand_id: @brand.id)
    @good.destroy
    @goods = Good.where(brand_id: @brand.id)
    # redirect_to brand_path(@good.brand_id)
  end

  private
  def set_brand
    @brand = Brand.find(params[:brand_id])
  end
end
