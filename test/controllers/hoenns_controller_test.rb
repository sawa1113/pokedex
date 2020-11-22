require 'test_helper'

class HoennsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoenn = hoenns(:one)
  end

  test "should get index" do
    get hoenns_url
    assert_response :success
  end

  test "should get new" do
    get new_hoenn_url
    assert_response :success
  end

  test "should create hoenn" do
    assert_difference('Hoenn.count') do
      post hoenns_url, params: { hoenn: { description: @hoenn.description, height: @hoenn.height, name: @hoenn.name, type_1: @hoenn.type_1, type_2: @hoenn.type_2, weight: @hoenn.weight } }
    end

    assert_redirected_to hoenn_url(Hoenn.last)
  end

  test "should show hoenn" do
    get hoenn_url(@hoenn)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoenn_url(@hoenn)
    assert_response :success
  end

  test "should update hoenn" do
    patch hoenn_url(@hoenn), params: { hoenn: { description: @hoenn.description, height: @hoenn.height, name: @hoenn.name, type_1: @hoenn.type_1, type_2: @hoenn.type_2, weight: @hoenn.weight } }
    assert_redirected_to hoenn_url(@hoenn)
  end

  test "should destroy hoenn" do
    assert_difference('Hoenn.count', -1) do
      delete hoenn_url(@hoenn)
    end

    assert_redirected_to hoenns_url
  end
end
