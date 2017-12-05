require 'test_helper'

class FaultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fault = faults(:one)
  end

  test "should get index" do
    get faults_url
    assert_response :success
  end

  test "should get new" do
    get new_fault_url
    assert_response :success
  end

  test "should create fault" do
    assert_difference('Fault.count') do
      post faults_url, params: { fault: { name: @fault.name, price: @fault.price } }
    end

    assert_redirected_to fault_url(Fault.last)
  end

  test "should show fault" do
    get fault_url(@fault)
    assert_response :success
  end

  test "should get edit" do
    get edit_fault_url(@fault)
    assert_response :success
  end

  test "should update fault" do
    patch fault_url(@fault), params: { fault: { name: @fault.name, price: @fault.price } }
    assert_redirected_to fault_url(@fault)
  end

  test "should destroy fault" do
    assert_difference('Fault.count', -1) do
      delete fault_url(@fault)
    end

    assert_redirected_to faults_url
  end
end
