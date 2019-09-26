class SearchController < ApplicationController
  def show
    @filtration = Filtration.search(params[:q])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filtration }
    end
  end
end
