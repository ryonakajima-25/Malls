class LikesController < ApplicationController
  # before_action :set_space, only: [:create, :destroy]

  def create
    # binding.pry
    if params[:space_id]
      @like = current_user.likes.create(space_id: params[:space_id])
      redirect_to space_path(@space)
    else
      @like = current_user.likes.create(brand_id: params[:brand_id])
      redirect_to brand_path(@brand)
    end
  end

  def destroy
    if params[:space_id]
      like = current_user.likes.find_by(space_id: params[:space_id])
      like.destroy
      redirect_to space_path(@space)
    else
      like = current_user.likes.find_by(brand_id: params[:brand_id])
      like.destroy
      redirect_to brand_path(@brand)
    end
  end

  private
  # def set_target
  #   binding.pry
  #   if params[:space_id]
  #     @space = Space.find(params[:space_id])
  #   elsif params[:brand_id]
  #     @brand = Brand.find(params[:brand_id])
  #   end
  # end
end
