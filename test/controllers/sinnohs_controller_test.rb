require 'test_helper'

class SinnohsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sinnoh = sinnohs(:one)
  end

  test "should get index" do
    get sinnohs_url
    assert_response :success
  end

  test "should get new" do
    get new_sinnoh_url
    assert_response :success
  end

  test "should create sinnoh" do
    assert_difference('Sinnoh.count') do
      post sinnohs_url, params: { sinnoh: { description: @sinnoh.description, height: @sinnoh.height, name: @sinnoh.name, type_1: @sinnoh.type_1, type_2: @sinnoh.type_2, weight: @sinnoh.weight } }
    end

    assert_redirected_to sinnoh_url(Sinnoh.last)
  end

  test "should show sinnoh" do
    get sinnoh_url(@sinnoh)
    assert_response :success
  end

  test "should get edit" do
    get edit_sinnoh_url(@sinnoh)
    assert_response :success
  end

  test "should update sinnoh" do
    patch sinnoh_url(@sinnoh), params: { sinnoh: { description: @sinnoh.description, height: @sinnoh.height, name: @sinnoh.name, type_1: @sinnoh.type_1, type_2: @sinnoh.type_2, weight: @sinnoh.weight } }
    assert_redirected_to sinnoh_url(@sinnoh)
  end

  test "should destroy sinnoh" do
    assert_difference('Sinnoh.count', -1) do
      delete sinnoh_url(@sinnoh)
    end

    assert_redirected_to sinnohs_url
  end
end
