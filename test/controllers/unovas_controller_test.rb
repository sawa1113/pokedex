require 'test_helper'

class UnovasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unova = unovas(:one)
  end

  test "should get index" do
    get unovas_url
    assert_response :success
  end

  test "should get new" do
    get new_unova_url
    assert_response :success
  end

  test "should create unova" do
    assert_difference('Unova.count') do
      post unovas_url, params: { unova: { description: @unova.description, height: @unova.height, name: @unova.name, type_1: @unova.type_1, type_2: @unova.type_2, weight: @unova.weight } }
    end

    assert_redirected_to unova_url(Unova.last)
  end

  test "should show unova" do
    get unova_url(@unova)
    assert_response :success
  end

  test "should get edit" do
    get edit_unova_url(@unova)
    assert_response :success
  end

  test "should update unova" do
    patch unova_url(@unova), params: { unova: { description: @unova.description, height: @unova.height, name: @unova.name, type_1: @unova.type_1, type_2: @unova.type_2, weight: @unova.weight } }
    assert_redirected_to unova_url(@unova)
  end

  test "should destroy unova" do
    assert_difference('Unova.count', -1) do
      delete unova_url(@unova)
    end

    assert_redirected_to unovas_url
  end
end
