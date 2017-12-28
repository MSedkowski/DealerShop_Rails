class SuppliesWarehousesController < ApplicationController
  before_action :set_supplies_element, only: [:show, :edit, :update, :destroy]

  # GET /SuppliesWarehouses
  # GET /SuppliesWarehouses.json
  def index
    @supplies_warehouses = SuppliesWarehouse.all
  end

  # GET /SuppliesWarehouses/1
  # GET /SuppliesWarehouses/1.json
  def show
  end

  # GET /SuppliesWarehouses/new
  def new
    @supplies_warehouse = SuppliesWarehouse.new
  end

  # GET /SuppliesWarehouses/1/edit
  def edit
  end

  # POST /SuppliesWarehouses
  # POST /SuppliesWarehouses.json
  def create
    @supplies_warehouse = SuppliesWarehouse.new(supplies_element_params)

    respond_to do |format|
      if @supplies_warehouse.save
        format.html { redirect_to @supplies_warehouse, notice: 'Supplies element was successfully created.' }
        format.json { render :show, status: :created, location: @supplies_warehouse }
      else
        format.html { render :new }
        format.json { render json: @supplies_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /SuppliesWarehouses/1
  # PATCH/PUT /SuppliesWarehouses/1.json
  def update
    respond_to do |format|
      if @supplies_warehouse.update(supplies_element_params)
        format.html { redirect_to @supplies_warehouse, notice: 'Supplies element was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplies_warehouse }
      else
        format.html { render :edit }
        format.json { render json: @supplies_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /SuppliesWarehouses/1
  # DELETE /SuppliesWarehouses/1.json
  def destroy
    @supplies_warehouse.destroy
    respond_to do |format|
      format.html { redirect_to supplies_elements_url, notice: 'Supplies element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplies_element
      @supplies_warehouse = SuppliesWarehouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplies_element_params
      params.require(:supplies_warehouse).permit(:supply_id, :element_id, :amount)
    end
end
