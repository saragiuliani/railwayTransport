require 'test_helper'

class TrainsControllerTest < ActionController::TestCase
  setup do
    @train = trains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train" do
    assert_difference('Train.count') do
      post :create, train: { firstclass_seats: @train.firstclass_seats, model: @train.model, secondclass_seats: @train.secondclass_seats, serial_number: @train.serial_number }
    end

    assert_redirected_to train_path(assigns(:train))
  end

  test "should show train" do
    get :show, id: @train
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train
    assert_response :success
  end

  test "should update train" do
    put :update, id: @train, train: { firstclass_seats: @train.firstclass_seats, model: @train.model, secondclass_seats: @train.secondclass_seats, serial_number: @train.serial_number }
    assert_redirected_to train_path(assigns(:train))
  end

  test "should destroy train" do
    assert_difference('Train.count', -1) do
      delete :destroy, id: @train
    end

    assert_redirected_to trains_path
  end
end
