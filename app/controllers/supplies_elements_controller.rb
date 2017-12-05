class SuppliesElementsController < ApplicationController
  before_action :set_supplies_element, only: [:show, :edit, :update, :destroy]

  # GET /supplies_elements
  # GET /supplies_elements.json
  def index
    @supplies_elements = SuppliesElement.all
  end

  # GET /supplies_elements/1
  # GET /supplies_elements/1.json
  def show
  end

  # GET /supplies_elements/new
  def new
    @supplies_element = SuppliesElement.new
  end

  # GET /supplies_elements/1/edit
  def edit
  end

  # POST /supplies_elements
  # POST /supplies_elements.json
  def create
    @supplies_element = SuppliesElement.new(supplies_element_params)

    respond_to do |format|
      if @supplies_element.save
        format.html { redirect_to @supplies_element, notice: 'Supplies element was successfully created.' }
        format.json { render :show, status: :created, location: @supplies_element }
      else
        format.html { render :new }
        format.json { render json: @supplies_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplies_elements/1
  # PATCH/PUT /supplies_elements/1.json
  def update
    respond_to do |format|
      if @supplies_element.update(supplies_element_params)
        format.html { redirect_to @supplies_element, notice: 'Supplies element was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplies_element }
      else
        format.html { render :edit }
        format.json { render json: @supplies_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplies_elements/1
  # DELETE /supplies_elements/1.json
  def destroy
    @supplies_element.destroy
    respond_to do |format|
      format.html { redirect_to supplies_elements_url, notice: 'Supplies element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplies_element
      @supplies_element = SuppliesElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplies_element_params
      params.require(:supplies_element).permit(:supply_id, :element_id, :amount)
    end
end
