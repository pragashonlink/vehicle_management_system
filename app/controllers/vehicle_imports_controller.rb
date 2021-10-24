class VehicleImportsController < ApplicationController
  def new
    @vehicle_import = VehicleImport.new
  end

  def create
    @vehicle_import = VehicleImport.new(permitted_params)
    
    if !@vehicle_import.save
      render :new
    else
      puts "done"
    end
  end

  private

  def permitted_params
    params.require(:vehicle_import).permit(:import_file)
  end

end