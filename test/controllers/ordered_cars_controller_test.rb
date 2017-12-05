require 'test_helper'

class OrderedCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordered_car = ordered_cars(:one)
  end

  test "should get index" do
    get ordered_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_ordered_car_url
    assert_response :success
  end

  test "should create ordered_car" do
    assert_difference('OrderedCar.count') do
      post ordered_cars_url, params: { ordered_car: { car_id: @ordered_car.car_id, client_id: @ordered_car.client_id, status: @ordered_car.status } }
    end

    assert_redirected_to ordered_car_url(OrderedCar.last)
  end

  test "should show ordered_car" do
    get ordered_car_url(@ordered_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordered_car_url(@ordered_car)
    assert_response :success
  end

  test "should update ordered_car" do
    patch ordered_car_url(@ordered_car), params: { ordered_car: { car_id: @ordered_car.car_id, client_id: @ordered_car.client_id, status: @ordered_car.status } }
    assert_redirected_to ordered_car_url(@ordered_car)
  end

  test "should destroy ordered_car" do
    assert_difference('OrderedCar.count', -1) do
      delete ordered_car_url(@ordered_car)
    end

    assert_redirected_to ordered_cars_url
  end
end
