require 'test_helper'

class RailroutesStopsControllerTest < ActionController::TestCase
  setup do
    @railroutes_stop = railroutes_stops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railroutes_stops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railroutes_stop" do
    assert_difference('RailroutesStop.count') do
      post :create, railroutes_stop: {  }
    end

    assert_redirected_to railroutes_stop_path(assigns(:railroutes_stop))
  end

  test "should show railroutes_stop" do
    get :show, id: @railroutes_stop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railroutes_stop
    assert_response :success
  end

  test "should update railroutes_stop" do
    put :update, id: @railroutes_stop, railroutes_stop: {  }
    assert_redirected_to railroutes_stop_path(assigns(:railroutes_stop))
  end

  test "should destroy railroutes_stop" do
    assert_difference('RailroutesStop.count', -1) do
      delete :destroy, id: @railroutes_stop
    end

    assert_redirected_to railroutes_stops_path
  end
end
