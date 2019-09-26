class FiltrationsController < ApplicationController
  before_action :set_filtration, only: [:show, :edit, :update, :destroy]

  # GET /filtrations
  # GET /filtrations.json
  def index
    @filtrations = Filtration.all
  end

  # GET /filtrations/1
  # GET /filtrations/1.json
  def show
  end

  # GET /filtrations/new
  def new
    @filtration = Filtration.new
  end

  # GET /filtrations/1/edit
  def edit
  end

  # POST /filtrations
  # POST /filtrations.json
  def create
    @filtration = Filtration.new(filtration_params)

    respond_to do |format|
      if @filtration.save
        format.html { redirect_to @filtration, notice: 'Filtration was successfully created.' }
        format.json { render :show, status: :created, location: @filtration }
      else
        format.html { render :new }
        format.json { render json: @filtration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filtrations/1
  # PATCH/PUT /filtrations/1.json
  def update
    respond_to do |format|
      if @filtration.update(filtration_params)
        format.html { redirect_to @filtration, notice: 'Filtration was successfully updated.' }
        format.json { render :show, status: :ok, location: @filtration }
      else
        format.html { render :edit }
        format.json { render json: @filtration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filtrations/1
  # DELETE /filtrations/1.json
  def destroy
    @filtration.destroy
    respond_to do |format|
      format.html { redirect_to filtrations_url, notice: 'Filtration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filtration
      @filtration = Filtration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filtration_params
      params.require(:filtration).permit(:name, :descritpion)
    end
end
