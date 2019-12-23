class DevelopersController < ApplicationController

  def show
    developer = Developer.find(params[:id])
    @name = developer.name
    @spaces = developer.spaces
  end
end
