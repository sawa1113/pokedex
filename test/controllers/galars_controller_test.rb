require 'test_helper'

class GalarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galar = galars(:one)
  end

  test "should get index" do
    get galars_url
    assert_response :success
  end

  test "should get new" do
    get new_galar_url
    assert_response :success
  end

  test "should create galar" do
    assert_difference('Galar.count') do
      post galars_url, params: { galar: { description: @galar.description, height: @galar.height, name: @galar.name, type_1: @galar.type_1, type_2: @galar.type_2, weight: @galar.weight } }
    end

    assert_redirected_to galar_url(Galar.last)
  end

  test "should show galar" do
    get galar_url(@galar)
    assert_response :success
  end

  test "should get edit" do
    get edit_galar_url(@galar)
    assert_response :success
  end

  test "should update galar" do
    patch galar_url(@galar), params: { galar: { description: @galar.description, height: @galar.height, name: @galar.name, type_1: @galar.type_1, type_2: @galar.type_2, weight: @galar.weight } }
    assert_redirected_to galar_url(@galar)
  end

  test "should destroy galar" do
    assert_difference('Galar.count', -1) do
      delete galar_url(@galar)
    end

    assert_redirected_to galars_url
  end
end
