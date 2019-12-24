class BrandsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

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

  def destroy
    brand = brand.find(params[:id])
    brand.destroy
  end

  def edit
    set_brand
  end

  def update
    brand = Brand.find(params[:id])
    brand.update(brand_params)
  end

  def show
    set_brand
    @good = Good.new
  end

  private
  def brand_params
    params.require(:brand).permit(:name, :category_large, :category_small, :target_sex, :target_age, :area_max, :area_min, :sales_record, :image).merge(tenant_id: current_tenant.id)
  end

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless tenant_signed_in?
  end

end
