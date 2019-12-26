class GoodsController < ApplicationController
  def create
    @good = current_developer.goods.create(brand_id: params[:brand_id])
    redirect_to brand_path(@good.brand_id)
  end

  def destroy
    @good = Good.find_by(brand_id: params[:brand_id], developer_id: current_developer.id)
    @good.destroy
    redirect_to brand_path(@good.brand_id)
  end
end
