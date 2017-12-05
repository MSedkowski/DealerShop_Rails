require 'test_helper'

class ServiceCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_center = service_centers(:one)
  end

  test "should get index" do
    get service_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_service_center_url
    assert_response :success
  end

  test "should create service_center" do
    assert_difference('ServiceCenter.count') do
      post service_centers_url, params: { service_center: { beginning_date: @service_center.beginning_date, brand: @service_center.brand, client_id: @service_center.client_id, cost: @service_center.cost, end_date: @service_center.end_date, license_plate: @service_center.license_plate, mechanic: @service_center.mechanic, model: @service_center.model, status: @service_center.status } }
    end

    assert_redirected_to service_center_url(ServiceCenter.last)
  end

  test "should show service_center" do
    get service_center_url(@service_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_center_url(@service_center)
    assert_response :success
  end

  test "should update service_center" do
    patch service_center_url(@service_center), params: { service_center: { beginning_date: @service_center.beginning_date, brand: @service_center.brand, client_id: @service_center.client_id, cost: @service_center.cost, end_date: @service_center.end_date, license_plate: @service_center.license_plate, mechanic: @service_center.mechanic, model: @service_center.model, status: @service_center.status } }
    assert_redirected_to service_center_url(@service_center)
  end

  test "should destroy service_center" do
    assert_difference('ServiceCenter.count', -1) do
      delete service_center_url(@service_center)
    end

    assert_redirected_to service_centers_url
  end
end
