require 'test_helper'

class KalosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kalo = kalos(:one)
  end

  test "should get index" do
    get kalos_url
    assert_response :success
  end

  test "should get new" do
    get new_kalo_url
    assert_response :success
  end

  test "should create kalo" do
    assert_difference('Kalo.count') do
      post kalos_url, params: { kalo: { description: @kalo.description, height: @kalo.height, name: @kalo.name, type_1: @kalo.type_1, type_2: @kalo.type_2, weight: @kalo.weight } }
    end

    assert_redirected_to kalo_url(Kalo.last)
  end

  test "should show kalo" do
    get kalo_url(@kalo)
    assert_response :success
  end

  test "should get edit" do
    get edit_kalo_url(@kalo)
    assert_response :success
  end

  test "should update kalo" do
    patch kalo_url(@kalo), params: { kalo: { description: @kalo.description, height: @kalo.height, name: @kalo.name, type_1: @kalo.type_1, type_2: @kalo.type_2, weight: @kalo.weight } }
    assert_redirected_to kalo_url(@kalo)
  end

  test "should destroy kalo" do
    assert_difference('Kalo.count', -1) do
      delete kalo_url(@kalo)
    end

    assert_redirected_to kalos_url
  end
end
