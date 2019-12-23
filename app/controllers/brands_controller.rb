class BrandsController < ApplicationController
  def index
    @brands = Brand.all.order("updated_at DESC")
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    @brand.save
    redirect_to '/'
  end

  private
  def brand_params
    params.require(:brand).permit(:name, :category_large, :category_small, :target_sex, :target_age, :area_max, :area_min, :sales_record)#.merge(tenant_id: current_tenant.id)
  end

end
