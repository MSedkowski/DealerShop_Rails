class ServiceCentersController < ApplicationController
  before_action :set_service_center, only: [:show, :edit, :update, :destroy]

  # GET /service_centers
  # GET /service_centers.json
  def index
    @service_centers = ServiceCenter.all
  end

  # GET /service_centers/1
  # GET /service_centers/1.json
  def show
  end

  # GET /service_centers/new
  def new
    @service_center = ServiceCenter.new
    @service_center.service_faults.build
  end

  # GET /service_centers/1/edit
  def edit
  end

  # POST /service_centers
  # POST /service_centers.json
  def create
    @service_center = ServiceCenter.new(service_center_params)
    @service_center.beginning_date = Date.today.to_s
    if @service_center.status == 'Zakończono'
      @service_center.end_date = Date.today.to_s
    end
    respond_to do |format|
      if @service_center.save
        format.html { redirect_to service_centers_url, notice: 'Service center was successfully created.' }
        format.json { render :index, status: :created, location: @service_center }
      else
        format.html { render :new }
        format.json { render json: @service_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_centers/1
  # PATCH/PUT /service_centers/1.json
  def update
    if service_center_params[:status] == 'Zakończono'
      @service_center.end_date = Date.today.to_s
    else
      @service_center.end_date = nil
    end
    respond_to do |format|
      if @service_center.update(service_center_params)
        format.html { redirect_to service_centers_url, notice: 'Service center was successfully updated.' }
        format.json { render :index, status: :ok, location: @service_center }
      else
        format.html { render :edit }
        format.json { render json: @service_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_centers/1
  # DELETE /service_centers/1.json
  def destroy
    @service_center.destroy
    respond_to do |format|
      format.html { redirect_to service_centers_url, notice: 'Service center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_center
      @service_center = ServiceCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_center_params
      params.require(:service_center).permit(:id, :brand, :model, :license_plate, :status, :client_id, :employee_id, :cost,
                                             service_faults_attributes: [:id, :fault_id, :_destroy])
    end
end
