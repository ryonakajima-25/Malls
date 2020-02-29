class BrandsController < ApplicationController
  before_action :move_to_index,        except: [:index, :show]
  before_action :set_brand,            only: [:show, :edit, :update, :destroy]
  before_action :ensure_correct_user,  only: [:edit, :update, :destroy]

  def index
    @brands = Brand.includes(:user, :images).order("updated_at DESC").page(params[:page]).per(6)
  end

  def new
    @brand = Brand.new
    @brand.images.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.images.present? && @brand.save
      redirect_to brand_path(@brand)
    else
      redirect_to new_brand_path
    end
  end

  def edit
    @images = @brand.images
  end

  def update
    @images = @brand.images
    if @brand.images.present? && @brand.update(brand_params)
      redirect_to brand_path(@brand)
    else
      render :edit
    end
  end

  def show
    @images = @brand.images
  end

  def destroy
    if @brand.destroy
      redirect_to brands_path
    else
      render :show
    end
  end

  private
  def brand_params
    params.require(:brand).permit(:name, :category_large, :category_small, :target_sex, :area_max, :area_min, :sales_record, target_age: [], images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_brand
    @brand = Brand.includes(:images).find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.genre == 'tenant'
  end

  def ensure_correct_user
    if @brand.user_id != current_user.id
      redirect_to root_path
    end
  end
end
