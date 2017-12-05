require 'test_helper'

class CarsToSellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cars_to_sell = cars_to_sells(:one)
  end

  test "should get index" do
    get cars_to_sells_url
    assert_response :success
  end

  test "should get new" do
    get new_cars_to_sell_url
    assert_response :success
  end

  test "should create cars_to_sell" do
    assert_difference('CarsToSell.count') do
      post cars_to_sells_url, params: { cars_to_sell: { additional_information: @cars_to_sell.additional_information, brand: @cars_to_sell.brand, model: @cars_to_sell.model, price: @cars_to_sell.price } }
    end

    assert_redirected_to cars_to_sell_url(CarsToSell.last)
  end

  test "should show cars_to_sell" do
    get cars_to_sell_url(@cars_to_sell)
    assert_response :success
  end

  test "should get edit" do
    get edit_cars_to_sell_url(@cars_to_sell)
    assert_response :success
  end

  test "should update cars_to_sell" do
    patch cars_to_sell_url(@cars_to_sell), params: { cars_to_sell: { additional_information: @cars_to_sell.additional_information, brand: @cars_to_sell.brand, model: @cars_to_sell.model, price: @cars_to_sell.price } }
    assert_redirected_to cars_to_sell_url(@cars_to_sell)
  end

  test "should destroy cars_to_sell" do
    assert_difference('CarsToSell.count', -1) do
      delete cars_to_sell_url(@cars_to_sell)
    end

    assert_redirected_to cars_to_sells_url
  end
end
