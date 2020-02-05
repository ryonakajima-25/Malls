class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if @user.genre == 1
      @spaces = @user.spaces
    elsif @user.genre == 2
      @brands = @user.brands
    end
  end

end
