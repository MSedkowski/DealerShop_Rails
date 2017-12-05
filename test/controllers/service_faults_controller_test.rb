require 'test_helper'

class ServiceFaultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_fault = service_faults(:one)
  end

  test "should get index" do
    get service_faults_url
    assert_response :success
  end

  test "should get new" do
    get new_service_fault_url
    assert_response :success
  end

  test "should create service_fault" do
    assert_difference('ServiceFault.count') do
      post service_faults_url, params: { service_fault: { fault_id: @service_fault.fault_id, service_id: @service_fault.service_id } }
    end

    assert_redirected_to service_fault_url(ServiceFault.last)
  end

  test "should show service_fault" do
    get service_fault_url(@service_fault)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_fault_url(@service_fault)
    assert_response :success
  end

  test "should update service_fault" do
    patch service_fault_url(@service_fault), params: { service_fault: { fault_id: @service_fault.fault_id, service_id: @service_fault.service_id } }
    assert_redirected_to service_fault_url(@service_fault)
  end

  test "should destroy service_fault" do
    assert_difference('ServiceFault.count', -1) do
      delete service_fault_url(@service_fault)
    end

    assert_redirected_to service_faults_url
  end
end
