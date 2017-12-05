require 'test_helper'

class CarsToSellDiscountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cars_to_sell_discount = cars_to_sell_discounts(:one)
  end

  test "should get index" do
    get cars_to_sell_discounts_url
    assert_response :success
  end

  test "should get new" do
    get new_cars_to_sell_discount_url
    assert_response :success
  end

  test "should create cars_to_sell_discount" do
    assert_difference('CarsToSellDiscount.count') do
      post cars_to_sell_discounts_url, params: { cars_to_sell_discount: { car_id: @cars_to_sell_discount.car_id, discount_id: @cars_to_sell_discount.discount_id } }
    end

    assert_redirected_to cars_to_sell_discount_url(CarsToSellDiscount.last)
  end

  test "should show cars_to_sell_discount" do
    get cars_to_sell_discount_url(@cars_to_sell_discount)
    assert_response :success
  end

  test "should get edit" do
    get edit_cars_to_sell_discount_url(@cars_to_sell_discount)
    assert_response :success
  end

  test "should update cars_to_sell_discount" do
    patch cars_to_sell_discount_url(@cars_to_sell_discount), params: { cars_to_sell_discount: { car_id: @cars_to_sell_discount.car_id, discount_id: @cars_to_sell_discount.discount_id } }
    assert_redirected_to cars_to_sell_discount_url(@cars_to_sell_discount)
  end

  test "should destroy cars_to_sell_discount" do
    assert_difference('CarsToSellDiscount.count', -1) do
      delete cars_to_sell_discount_url(@cars_to_sell_discount)
    end

    assert_redirected_to cars_to_sell_discounts_url
  end
end
