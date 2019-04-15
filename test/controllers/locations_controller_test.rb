require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
    @user = users :one
  end

  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get new" do
    get new_user_location_url(@user)
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post user_locations_url(@user), params: { location: { address: @location.address, city: @location.city, country_id: @location.country_id, zip_code: @location.zip_code } }
    end

    assert_redirected_to location_url(Location.last)
  end

  test "should show location" do
    get location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_url(@location)
    assert_response :success
  end

  test "should update location" do
    patch location_url(@location), params: { location: { address: @location.address, city: @location.city, country_id: @location.country_id, zip_code: @location.zip_code } }
    assert_redirected_to location_url(@location)
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete location_url(@location)
    end

    assert_redirected_to locations_url
  end
end
