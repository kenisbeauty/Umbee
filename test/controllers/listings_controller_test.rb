require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { address: @listing.address, amenites: @listing.amenites, availability_from: @listing.availability_from, availability_to: @listing.availability_to, description: @listing.description, home_type: @listing.home_type, maximum_guest: @listing.maximum_guest, name: @listing.name, price: @listing.price, room_type: @listing.room_type, image: @listing.image } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { address: @listing.address, amenites: @listing.amenites, availability_from: @listing.availability_from, availability_to: @listing.availability_to, description: @listing.description, home_type: @listing.home_type, maximum_guest: @listing.maximum_guest, name: @listing.name, price: @listing.price, room_type: @listing.room_type, image: @listing.image } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
