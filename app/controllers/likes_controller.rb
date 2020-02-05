class LikesController < ApplicationController
  before_action :set_target, only: [:create, :destroy]

  def create
    if @space.present?
      @like = current_user.likes.create(space_id: params[:space_id])
      redirect_to space_path(@space)
    elsif @brand.present?
      @like = current_user.likes.create(brand_id: params[:brand_id])
      redirect_to brand_path(@brand)
    end
  end

  def destroy
    if @space.present?
      like = current_user.likes.find_by(space_id: params[:space_id])
      like.destroy
      redirect_to space_path(@space)
    elsif @brand.present?
      like = current_user.likes.find_by(brand_id: params[:brand_id])
      like.destroy
      redirect_to brand_path(@brand)
    end
  end

  private

  def set_target
    if current_url.include?("spaces")
      @space = Space.find(params[:space_id])
    elsif current_url.include?("brands")
      @brand = Brand.find(params[:brand_id])
    end
  end
end
