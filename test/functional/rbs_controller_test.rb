require 'test_helper'

class RbsControllerTest < ActionController::TestCase
  setup do
    @rb = rbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rb" do
    assert_difference('Rb.count') do
      post :create, rb: { booking_date: @rb.booking_date, railroute_departure: @rb.railroute_departure, railroute_destination: @rb.railroute_destination, railroute_dtime: @rb.railroute_dtime, trip_departure: @rb.trip_departure, user_id: @rb.user_id }
    end

    assert_redirected_to rb_path(assigns(:rb))
  end

  test "should show rb" do
    get :show, id: @rb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rb
    assert_response :success
  end

  test "should update rb" do
    put :update, id: @rb, rb: { booking_date: @rb.booking_date, railroute_departure: @rb.railroute_departure, railroute_destination: @rb.railroute_destination, railroute_dtime: @rb.railroute_dtime, trip_departure: @rb.trip_departure, user_id: @rb.user_id }
    assert_redirected_to rb_path(assigns(:rb))
  end

  test "should destroy rb" do
    assert_difference('Rb.count', -1) do
      delete :destroy, id: @rb
    end

    assert_redirected_to rbs_path
  end
end
