require "test_helper"

class ChargersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charger = chargers(:one)
  end

  test "should get index" do
    get chargers_url, as: :json
    assert_response :success
  end

  test "should create charger" do
    assert_difference('Charger.count') do
      post chargers_url, params: { charger: { name: @charger.name, price: @charger.price } }, as: :json
    end

    assert_response 201
  end

  test "should show charger" do
    get charger_url(@charger), as: :json
    assert_response :success
  end

  test "should update charger" do
    patch charger_url(@charger), params: { charger: { name: @charger.name, price: @charger.price } }, as: :json
    assert_response 200
  end

  test "should destroy charger" do
    assert_difference('Charger.count', -1) do
      delete charger_url(@charger), as: :json
    end

    assert_response 204
  end
end
