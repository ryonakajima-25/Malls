class LikesController < ApplicationController
  
  def create
    if params[:space_id]
      @like = current_user.likes.create(space_id: params[:space_id])
      redirect_to :back
    else
      @like = current_user.likes.create(brand_id: params[:brand_id])
      redirect_to :back
    end
  end

  def destroy
    if params[:space_id]
      like = current_user.likes.find_by(space_id: params[:space_id])
      like.destroy
      redirect_to :back
    else
      like = current_user.likes.find_by(brand_id: params[:brand_id])
      like.destroy
      redirect_to :back
    end
  end
end
