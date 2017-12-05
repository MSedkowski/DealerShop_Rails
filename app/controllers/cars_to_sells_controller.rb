class CarsToSellsController < ApplicationController
  before_action :set_cars_to_sell, only: [:show, :edit, :update, :destroy]

  # GET /cars_to_sells
  # GET /cars_to_sells.json
  def index
    @cars_to_sells = CarsToSell.all
  end

  # GET /cars_to_sells/1
  # GET /cars_to_sells/1.json
  def show
  end

  # GET /cars_to_sells/new
  def new
    @cars_to_sell = CarsToSell.new
  end

  # GET /cars_to_sells/1/edit
  def edit
  end

  # POST /cars_to_sells
  # POST /cars_to_sells.json
  def create
    @cars_to_sell = CarsToSell.new(cars_to_sell_params)

    respond_to do |format|
      if @cars_to_sell.save
        format.html { redirect_to @cars_to_sell, notice: 'Cars to sell was successfully created.' }
        format.json { render :show, status: :created, location: @cars_to_sell }
      else
        format.html { render :new }
        format.json { render json: @cars_to_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars_to_sells/1
  # PATCH/PUT /cars_to_sells/1.json
  def update
    respond_to do |format|
      if @cars_to_sell.update(cars_to_sell_params)
        format.html { redirect_to @cars_to_sell, notice: 'Cars to sell was successfully updated.' }
        format.json { render :show, status: :ok, location: @cars_to_sell }
      else
        format.html { render :edit }
        format.json { render json: @cars_to_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars_to_sells/1
  # DELETE /cars_to_sells/1.json
  def destroy
    @cars_to_sell.destroy
    respond_to do |format|
      format.html { redirect_to cars_to_sells_url, notice: 'Cars to sell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cars_to_sell
      @cars_to_sell = CarsToSell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cars_to_sell_params
      params.require(:cars_to_sell).permit(:brand, :model, :price, :additional_information)
    end
end
