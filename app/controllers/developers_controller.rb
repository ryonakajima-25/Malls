class DevelopersController < ApplicationController

  def show
    @name = current_developer.name
    @space = current_developer.spaces
  end


end
