class SpacesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @spaces = Space.all.order("updated_at DESC")
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.save
    redirect_to '/'
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
    @nice = Nice.new
  end


  private
  def space_params
    params.require(:space).permit(:location, :mall_name, :floor, :block_number, :area, :rent, :sector, :image).merge(developer_id: current_developer.id)
  end

  def set_space
    @space = Space.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless developer_signed_in?
  end

end
