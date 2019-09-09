class VehiclesController < ApplicationController
    def index
        @vehicles = ['Ford Fiesta', 'Subaru Ascent', 'Honda Civic']
    end
end
