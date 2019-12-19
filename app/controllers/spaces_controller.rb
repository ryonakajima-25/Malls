class SpacesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @spaces = Space.all 
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.save
    redirect_to '/'
  end


  private
  def space_params
    params.require(:space).permit(:location, :mall_name, :floor, :block_number, :area, :rent, :sector, :image).merge(developer_id: current_developer.id)
  end

end
