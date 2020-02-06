class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if @user.genre == "developer"
      @spaces = @user.spaces
    else
      @brands = @user.brands
    end
  end

end
