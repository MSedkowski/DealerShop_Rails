require 'test_helper'

class RentalCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_car = rental_cars(:one)
  end

  test "should get index" do
    get rental_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_car_url
    assert_response :success
  end

  test "should create rental_car" do
    assert_difference('RentalCar.count') do
      post rental_cars_url, params: { rental_car: { additional_information: @rental_car.additional_information, brand: @rental_car.brand, model: @rental_car.model } }
    end

    assert_redirected_to rental_car_url(RentalCar.last)
  end

  test "should show rental_car" do
    get rental_car_url(@rental_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_car_url(@rental_car)
    assert_response :success
  end

  test "should update rental_car" do
    patch rental_car_url(@rental_car), params: { rental_car: { additional_information: @rental_car.additional_information, brand: @rental_car.brand, model: @rental_car.model } }
    assert_redirected_to rental_car_url(@rental_car)
  end

  test "should destroy rental_car" do
    assert_difference('RentalCar.count', -1) do
      delete rental_car_url(@rental_car)
    end

    assert_redirected_to rental_cars_url
  end
end
