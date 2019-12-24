class TenantsController < ApplicationController

  def show
    tenant = Tenant.find(params[:id])
    @name = tenant.name
    @brands =  tenant.brands
  end
end
