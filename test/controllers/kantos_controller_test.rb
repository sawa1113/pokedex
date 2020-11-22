require 'test_helper'

class KantosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kanto = kantos(:one)
  end

  test "should get index" do
    get kantos_url
    assert_response :success
  end

  test "should get new" do
    get new_kanto_url
    assert_response :success
  end

  test "should create kanto" do
    assert_difference('Kanto.count') do
      post kantos_url, params: { kanto: { description: @kanto.description, height: @kanto.height, name: @kanto.name, type_1: @kanto.type_1, type_2: @kanto.type_2, weight: @kanto.weight } }
    end

    assert_redirected_to kanto_url(Kanto.last)
  end

  test "should show kanto" do
    get kanto_url(@kanto)
    assert_response :success
  end

  test "should get edit" do
    get edit_kanto_url(@kanto)
    assert_response :success
  end

  test "should update kanto" do
    patch kanto_url(@kanto), params: { kanto: { description: @kanto.description, height: @kanto.height, name: @kanto.name, type_1: @kanto.type_1, type_2: @kanto.type_2, weight: @kanto.weight } }
    assert_redirected_to kanto_url(@kanto)
  end

  test "should destroy kanto" do
    assert_difference('Kanto.count', -1) do
      delete kanto_url(@kanto)
    end

    assert_redirected_to kantos_url
  end
end
