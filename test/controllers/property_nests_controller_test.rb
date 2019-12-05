require 'test_helper'

class PropertyNestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_nest = property_nests(:one)
  end

  test "should get index" do
    get property_nests_url
    assert_response :success
  end

  test "should get new" do
    get new_property_nest_url
    assert_response :success
  end

  test "should create property_nest" do
    assert_difference('PropertyNest.count') do
      post property_nests_url, params: { property_nest: { property_id: @property_nest.property_id } }
    end

    assert_redirected_to property_nest_url(PropertyNest.last)
  end

  test "should show property_nest" do
    get property_nest_url(@property_nest)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_nest_url(@property_nest)
    assert_response :success
  end

  test "should update property_nest" do
    patch property_nest_url(@property_nest), params: { property_nest: { property_id: @property_nest.property_id } }
    assert_redirected_to property_nest_url(@property_nest)
  end

  test "should destroy property_nest" do
    assert_difference('PropertyNest.count', -1) do
      delete property_nest_url(@property_nest)
    end

    assert_redirected_to property_nests_url
  end
end
