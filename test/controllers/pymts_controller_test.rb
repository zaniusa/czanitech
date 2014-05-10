require 'test_helper'

class PymtsControllerTest < ActionController::TestCase
  setup do
    @pymt = pymts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pymts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pymt" do
    assert_difference('Pymt.count') do
      post :create, pymt: { order_to_show: @pymt.order_to_show, pymt_status: @pymt.pymt_status }
    end

    assert_redirected_to pymt_path(assigns(:pymt))
  end

  test "should show pymt" do
    get :show, id: @pymt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pymt
    assert_response :success
  end

  test "should update pymt" do
    patch :update, id: @pymt, pymt: { order_to_show: @pymt.order_to_show, pymt_status: @pymt.pymt_status }
    assert_redirected_to pymt_path(assigns(:pymt))
  end

  test "should destroy pymt" do
    assert_difference('Pymt.count', -1) do
      delete :destroy, id: @pymt
    end

    assert_redirected_to pymts_path
  end
end
