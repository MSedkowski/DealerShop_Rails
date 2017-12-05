class ServiceFaultsController < ApplicationController
  before_action :set_service_fault, only: [:show, :edit, :update, :destroy]

  # GET /service_faults
  # GET /service_faults.json
  def index
    @service_faults = ServiceFault.all
  end

  # GET /service_faults/1
  # GET /service_faults/1.json
  def show
  end

  # GET /service_faults/new
  def new
    @service_fault = ServiceFault.new
  end

  # GET /service_faults/1/edit
  def edit
  end

  # POST /service_faults
  # POST /service_faults.json
  def create
    @service_fault = ServiceFault.new(service_fault_params)

    respond_to do |format|
      if @service_fault.save
        format.html { redirect_to @service_fault, notice: 'Service fault was successfully created.' }
        format.json { render :show, status: :created, location: @service_fault }
      else
        format.html { render :new }
        format.json { render json: @service_fault.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_faults/1
  # PATCH/PUT /service_faults/1.json
  def update
    respond_to do |format|
      if @service_fault.update(service_fault_params)
        format.html { redirect_to @service_fault, notice: 'Service fault was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_fault }
      else
        format.html { render :edit }
        format.json { render json: @service_fault.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_faults/1
  # DELETE /service_faults/1.json
  def destroy
    @service_fault.destroy
    respond_to do |format|
      format.html { redirect_to service_faults_url, notice: 'Service fault was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_fault
      @service_fault = ServiceFault.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_fault_params
      params.require(:service_fault).permit(:service_id, :fault_id)
    end
end
