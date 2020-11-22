require 'test_helper'

class JohtosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @johto = johtos(:one)
  end

  test "should get index" do
    get johtos_url
    assert_response :success
  end

  test "should get new" do
    get new_johto_url
    assert_response :success
  end

  test "should create johto" do
    assert_difference('Johto.count') do
      post johtos_url, params: { johto: { description: @johto.description, height: @johto.height, name: @johto.name, type_1: @johto.type_1, type_2: @johto.type_2, weight: @johto.weight } }
    end

    assert_redirected_to johto_url(Johto.last)
  end

  test "should show johto" do
    get johto_url(@johto)
    assert_response :success
  end

  test "should get edit" do
    get edit_johto_url(@johto)
    assert_response :success
  end

  test "should update johto" do
    patch johto_url(@johto), params: { johto: { description: @johto.description, height: @johto.height, name: @johto.name, type_1: @johto.type_1, type_2: @johto.type_2, weight: @johto.weight } }
    assert_redirected_to johto_url(@johto)
  end

  test "should destroy johto" do
    assert_difference('Johto.count', -1) do
      delete johto_url(@johto)
    end

    assert_redirected_to johtos_url
  end
end
