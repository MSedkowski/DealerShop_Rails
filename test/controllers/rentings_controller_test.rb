require 'test_helper'

class RentingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renting = rentings(:one)
  end

  test "should get index" do
    get rentings_url
    assert_response :success
  end

  test "should get new" do
    get new_renting_url
    assert_response :success
  end

  test "should create renting" do
    assert_difference('Renting.count') do
      post rentings_url, params: { renting: { car_id: @renting.car_id, client_id: @renting.client_id, end_date: @renting.end_date, start_date: @renting.start_date } }
    end

    assert_redirected_to renting_url(Renting.last)
  end

  test "should show renting" do
    get renting_url(@renting)
    assert_response :success
  end

  test "should get edit" do
    get edit_renting_url(@renting)
    assert_response :success
  end

  test "should update renting" do
    patch renting_url(@renting), params: { renting: { car_id: @renting.car_id, client_id: @renting.client_id, end_date: @renting.end_date, start_date: @renting.start_date } }
    assert_redirected_to renting_url(@renting)
  end

  test "should destroy renting" do
    assert_difference('Renting.count', -1) do
      delete renting_url(@renting)
    end

    assert_redirected_to rentings_url
  end
end
