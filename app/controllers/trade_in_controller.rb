class TradeInController < ApplicationController

    def trade_in
        @vehicles = Vehicle.find(params[:id])
    end

    def index
        @vehicles = Vehicle.all
    end
    
end