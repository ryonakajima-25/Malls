class SpacesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @spaces = Space.order("updated_at DESC").page(params[:page]).per(6)
  end

  def new
    @space = Space.new
    @space.images.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to spaces_path
    else
      render new_product_path
    end
  end

  def destroy
    space = Space.find(params[:id])
    space.destroy
  end

  def edit
    set_space
  end

  def update
    space = Space.find(params[:id])
    space.update(space_params)
  end

  def show
    set_space
    @images = @space.images
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

end
