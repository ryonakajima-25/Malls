class NicesController < ApplicationController
  def create
    @nice = current_tenant.nices.create(space_id: params[:space_id])
    redirect_to space_path(@nice.space_id)
  end

  def destroy
    @nice = Nice.find_by(space_id: params[:space_id], tenant_id: current_tenant.id)
    @nice.destroy
    redirect_to space_path(@nice.space_id)
  end
end

