class LikesController < ApplicationController
  
  def create
    if params[:space_id]
      @like = current_user.likes.create(space_id: params[:space_id])
      redirect_to space_path(params[:space_id])
    else
      @like = current_user.likes.create(brand_id: params[:brand_id])
      redirect_to brand_path(params[:brand_id])
    end
  end

  def destroy
    if params[:space_id]
      like = current_user.likes.find_by(space_id: params[:space_id])
      like.destroy
      redirect_to space_path(params[:space_id])
    else
      like = current_user.likes.find_by(brand_id: params[:brand_id])
      like.destroy
      redirect_to brand_path(params[:brand_id])
    end
  end
end
