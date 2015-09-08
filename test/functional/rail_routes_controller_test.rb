require 'test_helper'

class RailRoutesControllerTest < ActionController::TestCase
  setup do
    @rail_route = rail_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rail_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rail_route" do
    assert_difference('RailRoute.count') do
      post :create, rail_route: { a_time: @rail_route.a_time, d_time: @rail_route.d_time, departure: @rail_route.departure, destination: @rail_route.destination, id_train: @rail_route.id_train }
    end

    assert_redirected_to rail_route_path(assigns(:rail_route))
  end

  test "should show rail_route" do
    get :show, id: @rail_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rail_route
    assert_response :success
  end

  test "should update rail_route" do
    put :update, id: @rail_route, rail_route: { a_time: @rail_route.a_time, d_time: @rail_route.d_time, departure: @rail_route.departure, destination: @rail_route.destination, id_train: @rail_route.id_train }
    assert_redirected_to rail_route_path(assigns(:rail_route))
  end

  test "should destroy rail_route" do
    assert_difference('RailRoute.count', -1) do
      delete :destroy, id: @rail_route
    end

    assert_redirected_to rail_routes_path
  end
end
