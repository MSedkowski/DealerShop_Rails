require 'test_helper'

class SuppliesElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplies_warehouse = supplies_elements(:one)
  end

  test "should get index" do
    get supplies_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_supplies_element_url
    assert_response :success
  end

  test "should create @supplies_warehouse" do
    assert_difference('SuppliesElement.count') do
      post supplies_elements_url, params: {supplies_warehouse: {amount: @supplies_warehouse.amount, element_id: @supplies_warehouse.element_id, supply_id: @supplies_warehouse.supply_id } }
    end

    assert_redirected_to supplies_element_url(SuppliesWarehouse.last)
  end

  test "should show @supplies_warehouse" do
    get supplies_element_url(@supplies_warehouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplies_element_url(@supplies_warehouse)
    assert_response :success
  end

  test "should update @supplies_warehouse" do
    patch supplies_element_url(@supplies_warehouse), params: {supplies_warehouse: {amount: @supplies_warehouse.amount, element_id: @supplies_warehouse.element_id, supply_id: @supplies_warehouse.supply_id } }
    assert_redirected_to supplies_element_url(@supplies_warehouse)
  end

  test "should destroy @supplies_warehouse" do
    assert_difference('SuppliesWarehouse.count', -1) do
      delete supplies_element_url(@supplies_warehouse)
    end

    assert_redirected_to supplies_elements_url
  end
end
