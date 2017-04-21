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
      post listings_url, params: { listing: { address: '3, elfinstone road, aberdeen', amenites: 'iron', availability_from: '2017-04-20', availability_to:'2017-04-04', description:'the home is beautiful', home_type:'entire home', maximum_guest: '2 guest', name:'ocean wave', price: '$40', room_type:'apartment' , image: 'default.jpg' } }
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
    patch listing_url(@listing), params: { listing: { address: '3, elfinstone road, aberdeen', amenites: 'iron', availability_from: '2017-04-20', availability_to:'2017-04-04', description:'the home is beautiful', home_type:'entire home', maximum_guest: '2 guest', name:'ocean wave', price: '$40', room_type:'apartment' , image: 'default.jpg' } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
