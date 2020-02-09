class SpacesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_space,     only: [:show, :edit, :update, :destroy]
  before_action :ensure_correct_user,  only: [:edit, :update, :destroy]

  def index
    @spaces = Space.order("updated_at DESC").page(params[:page]).per(6)
  end

  def new
    @space = Space.new
    @space.images.new
  end

  def create
    @space = Space.new(space_params)
    if @space.images.present? && @space.save
      redirect_to space_path(@space)
    else
      redirect_to new_space_path
    end
  end

  def edit
    @images = @space.images
  end

  def updated
    @images = @space.images
    if @space.images.present? && @space.update(space_params)
      redirect_to space_path(@space) 
    else
      render :edit
    end
  end

  def show
    @images = @space.images
  end

  def destroy
    if @space.destroy
      redirect_to spaces_path
    else
      render :show
    end
  end

  private
  def space_params
    params.require(:space).permit(:location, :mall_name, :floor, :block_number, :area, :rent, :sector, images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_space
    @space = Space.includes(:images).find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.genre == 'developer'
  end

  def ensure_correct_user
    if @space.user_id != current_user.id
      redirect_to root_path
    end
  end
end
