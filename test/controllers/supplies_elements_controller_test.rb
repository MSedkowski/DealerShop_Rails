require 'test_helper'

class SuppliesElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplies_element = supplies_elements(:one)
  end

  test "should get index" do
    get supplies_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_supplies_element_url
    assert_response :success
  end

  test "should create supplies_element" do
    assert_difference('SuppliesElement.count') do
      post supplies_elements_url, params: { supplies_element: { amount: @supplies_element.amount, element_id: @supplies_element.element_id, supply_id: @supplies_element.supply_id } }
    end

    assert_redirected_to supplies_element_url(SuppliesElement.last)
  end

  test "should show supplies_element" do
    get supplies_element_url(@supplies_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplies_element_url(@supplies_element)
    assert_response :success
  end

  test "should update supplies_element" do
    patch supplies_element_url(@supplies_element), params: { supplies_element: { amount: @supplies_element.amount, element_id: @supplies_element.element_id, supply_id: @supplies_element.supply_id } }
    assert_redirected_to supplies_element_url(@supplies_element)
  end

  test "should destroy supplies_element" do
    assert_difference('SuppliesElement.count', -1) do
      delete supplies_element_url(@supplies_element)
    end

    assert_redirected_to supplies_elements_url
  end
end
