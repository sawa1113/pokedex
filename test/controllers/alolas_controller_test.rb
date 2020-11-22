require 'test_helper'

class AlolasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alola = alolas(:one)
  end

  test "should get index" do
    get alolas_url
    assert_response :success
  end

  test "should get new" do
    get new_alola_url
    assert_response :success
  end

  test "should create alola" do
    assert_difference('Alola.count') do
      post alolas_url, params: { alola: { description: @alola.description, height: @alola.height, name: @alola.name, type_1: @alola.type_1, type_2: @alola.type_2, weight: @alola.weight } }
    end

    assert_redirected_to alola_url(Alola.last)
  end

  test "should show alola" do
    get alola_url(@alola)
    assert_response :success
  end

  test "should get edit" do
    get edit_alola_url(@alola)
    assert_response :success
  end

  test "should update alola" do
    patch alola_url(@alola), params: { alola: { description: @alola.description, height: @alola.height, name: @alola.name, type_1: @alola.type_1, type_2: @alola.type_2, weight: @alola.weight } }
    assert_redirected_to alola_url(@alola)
  end

  test "should destroy alola" do
    assert_difference('Alola.count', -1) do
      delete alola_url(@alola)
    end

    assert_redirected_to alolas_url
  end
end
