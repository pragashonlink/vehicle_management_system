class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.search(params[:search])
  end
end