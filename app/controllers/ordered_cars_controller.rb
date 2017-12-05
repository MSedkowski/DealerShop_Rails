class OrderedCarsController < ApplicationController
  before_action :set_ordered_car, only: [:show, :edit, :update, :destroy]

  # GET /ordered_cars
  # GET /ordered_cars.json
  def index
    @ordered_cars = OrderedCar.all
  end

  # GET /ordered_cars/1
  # GET /ordered_cars/1.json
  def show
  end

  # GET /ordered_cars/new
  def new
    @ordered_car = OrderedCar.new
  end

  # GET /ordered_cars/1/edit
  def edit
  end

  # POST /ordered_cars
  # POST /ordered_cars.json
  def create
    @ordered_car = OrderedCar.new(ordered_car_params)

    respond_to do |format|
      if @ordered_car.save
        format.html { redirect_to @ordered_car, notice: 'Ordered car was successfully created.' }
        format.json { render :show, status: :created, location: @ordered_car }
      else
        format.html { render :new }
        format.json { render json: @ordered_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordered_cars/1
  # PATCH/PUT /ordered_cars/1.json
  def update
    respond_to do |format|
      if @ordered_car.update(ordered_car_params)
        format.html { redirect_to @ordered_car, notice: 'Ordered car was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordered_car }
      else
        format.html { render :edit }
        format.json { render json: @ordered_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordered_cars/1
  # DELETE /ordered_cars/1.json
  def destroy
    @ordered_car.destroy
    respond_to do |format|
      format.html { redirect_to ordered_cars_url, notice: 'Ordered car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordered_car
      @ordered_car = OrderedCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordered_car_params
      params.require(:ordered_car).permit(:car_id, :client_id, :status)
    end
end
