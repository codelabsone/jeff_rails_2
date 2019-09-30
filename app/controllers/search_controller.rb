class SearchController < ApplicationController
  def show
    @filtered_cars = []
    @filtered_cars.push(Vehicle.where(year: params[:q]))
    @filtered_cars = Vehicle.where(name:  params[:q])
    respond_to do |format|
      format.html
    end
  end
end
# google rails model method to match on any field
