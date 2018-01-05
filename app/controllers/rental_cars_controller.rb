class RentalCarsController < ApplicationController
  before_action :set_rental_car, only: [:show, :edit, :update, :destroy]

  # GET /rental_cars
  # GET /rental_cars.json
  def index
    @rental_cars = RentalCar.all
  end

  # GET /rental_cars/1
  # GET /rental_cars/1.json
  def show
  end

  # GET /rental_cars/new
  def new
    @rental_car = RentalCar.new
  end

  # GET /rental_cars/1/edit
  def edit
  end

  # POST /rental_cars
  # POST /rental_cars.json
  def create
    @rental_car = RentalCar.new(rental_car_params)

    respond_to do |format|
      if @rental_car.save
        format.html { redirect_to rental_cars_path, notice: 'Rental car was successfully created.' }
        format.json { render :index, status: :created, location: @rental_car }
      else
        format.html { render :new }
        format.json { render json: @rental_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_cars/1
  # PATCH/PUT /rental_cars/1.json
  def update
    respond_to do |format|
      if @rental_car.update(rental_car_params)
        format.html { redirect_to rental_cars_path, notice: 'Rental car was successfully updated.' }
        format.json { render :index, status: :ok, location: @rental_car }
      else
        format.html { render :edit }
        format.json { render json: @rental_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_cars/1
  # DELETE /rental_cars/1.json
  def destroy
    @rental_car.destroy
    respond_to do |format|
      format.html { redirect_to rental_cars_url, notice: 'Rental car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_car
      @rental_car = RentalCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_car_params
      params.require(:rental_car).permit(:brand, :model, :additional_information)
    end
end
