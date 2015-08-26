require 'test_helper'

class TrsControllerTest < ActionController::TestCase
  setup do
    @tr = trs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tr" do
    assert_difference('Tr.count') do
      post :create, tr: { railroute_departure: @tr.railroute_departure, railroute_destination: @tr.railroute_destination, railroute_dtime: @tr.railroute_dtime, train: @tr.train }
    end

    assert_redirected_to tr_path(assigns(:tr))
  end

  test "should show tr" do
    get :show, id: @tr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tr
    assert_response :success
  end

  test "should update tr" do
    put :update, id: @tr, tr: { railroute_departure: @tr.railroute_departure, railroute_destination: @tr.railroute_destination, railroute_dtime: @tr.railroute_dtime, train: @tr.train }
    assert_redirected_to tr_path(assigns(:tr))
  end

  test "should destroy tr" do
    assert_difference('Tr.count', -1) do
      delete :destroy, id: @tr
    end

    assert_redirected_to trs_path
  end
end
