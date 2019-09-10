class VehiclesController < ApplicationController
    def index
        @vehicles = ['Ford F150', 'Ford Fiesta', 'Ford Fusion', 'Ford Explorer']
    end
end
