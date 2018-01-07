class CarsToSellDiscountsController < ApplicationController
  before_action :set_cars_to_sell_discount, only: [:show, :edit, :update, :destroy]

  # GET /cars_to_sell_discounts
  # GET /cars_to_sell_discounts.json
  def index
    @cars_to_sell_discounts = CarsToSellDiscount.all
  end

  # GET /cars_to_sell_discounts/1
  # GET /cars_to_sell_discounts/1.json
  def show
  end

  # GET /cars_to_sell_discounts/new
  def new
    @cars_to_sell_discount = CarsToSellDiscount.new
  end

  # GET /cars_to_sell_discounts/1/edit
  def edit
  end

  # POST /cars_to_sell_discounts
  # POST /cars_to_sell_discounts.json
  def create
    @cars_to_sell_discount = CarsToSellDiscount.new(cars_to_sell_discount_params)

    respond_to do |format|
      if @cars_to_sell_discount.save
        format.html { redirect_to @cars_to_sell_discount, notice: 'Cars to sell discount was successfully created.' }
        format.json { render :show, status: :created, location: @cars_to_sell_discount }
      else
        format.html { render :new }
        format.json { render json: @cars_to_sell_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars_to_sell_discounts/1
  # PATCH/PUT /cars_to_sell_discounts/1.json
  def update
    respond_to do |format|
      if @cars_to_sell_discount.update(cars_to_sell_discount_params)
        format.html { redirect_to @cars_to_sell_discount, notice: 'Cars to sell discount was successfully updated.' }
        format.json { render :show, status: :ok, location: @cars_to_sell_discount }
      else
        format.html { render :edit }
        format.json { render json: @cars_to_sell_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars_to_sell_discounts/1
  # DELETE /cars_to_sell_discounts/1.json
  def destroy
    @cars_to_sell_discount.destroy
    respond_to do |format|
      format.html { redirect_to cars_to_sell_discounts_url, notice: 'Cars to sell discount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cars_to_sell_discount
      @cars_to_sell_discount = CarsToSellDiscount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cars_to_sell_discount_params
      params.require(:cars_to_sell_discount).permit(:cars_to_sell_id, :discount_id)
    end
end
