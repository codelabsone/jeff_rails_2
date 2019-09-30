class VehiclesController < ApplicationController
    def index
        @vehicles = Vehicle.all
    end

    def show
        @vehicles = Vehicle.find(params[:id])
    end

    def edit
        @vehicles = Vehicle.find(params[:id])
    end

    def update
        @vehicles = Vehicle.find(params[:id])
        @vehicles.update(vehicle_params)
        redirect_to @vehicles
    end

    def new
        @vehicles = Vehicle.new
    end

    def create
        @vehicles = Vehicle.new(vehicle_params)
        @vehicles.save
        redirect_to @vehicles
    end
private

  def vehicle_params
    params.require(:vehicle).permit(:name, :description, :cartype, :year, :price)
  end
end
