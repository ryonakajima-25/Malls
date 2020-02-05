class BrandsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @brands = Brand.order("updated_at DESC").page(params[:page]).per(6)
  end

  def new
    @brand = Brand.new
  end

  def create
    # params[:brand][:target_age] = params[:brand][:target_age].join(",")
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
  end

  private
  def brand_params
    params.require(:brand).permit(:name, :category_large, :category_small, :target_sex, :area_max, :area_min, :sales_record, :image, target_age: []).merge(user_id: current_user.id)
  end

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.genre == 2
  end

end
