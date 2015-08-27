require 'test_helper'

class RailroutesTrainsControllerTest < ActionController::TestCase
  setup do
    @railroutes_train = railroutes_trains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railroutes_trains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railroutes_train" do
    assert_difference('RailroutesTrain.count') do
      post :create, railroutes_train: { railroute_id: @railroutes_train.railroute_id, train_id: @railroutes_train.train_id }
    end

    assert_redirected_to railroutes_train_path(assigns(:railroutes_train))
  end

  test "should show railroutes_train" do
    get :show, id: @railroutes_train
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railroutes_train
    assert_response :success
  end

  test "should update railroutes_train" do
    put :update, id: @railroutes_train, railroutes_train: { railroute_id: @railroutes_train.railroute_id, train_id: @railroutes_train.train_id }
    assert_redirected_to railroutes_train_path(assigns(:railroutes_train))
  end

  test "should destroy railroutes_train" do
    assert_difference('RailroutesTrain.count', -1) do
      delete :destroy, id: @railroutes_train
    end

    assert_redirected_to railroutes_trains_path
  end
end
