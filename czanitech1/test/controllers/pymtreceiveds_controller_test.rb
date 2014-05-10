require 'test_helper'

class PymtreceivedsControllerTest < ActionController::TestCase
  setup do
    @pymtreceived = pymtreceiveds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pymtreceiveds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pymtreceived" do
    assert_difference('Pymtreceived.count') do
      post :create, pymtreceived: { amount: @pymtreceived.amount, control_1: @pymtreceived.control_1, control_2: @pymtreceived.control_2, project_id: @pymtreceived.project_id }
    end

    assert_redirected_to pymtreceived_path(assigns(:pymtreceived))
  end

  test "should show pymtreceived" do
    get :show, id: @pymtreceived
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pymtreceived
    assert_response :success
  end

  test "should update pymtreceived" do
    patch :update, id: @pymtreceived, pymtreceived: { amount: @pymtreceived.amount, control_1: @pymtreceived.control_1, control_2: @pymtreceived.control_2, project_id: @pymtreceived.project_id }
    assert_redirected_to pymtreceived_path(assigns(:pymtreceived))
  end

  test "should destroy pymtreceived" do
    assert_difference('Pymtreceived.count', -1) do
      delete :destroy, id: @pymtreceived
    end

    assert_redirected_to pymtreceiveds_path
  end
end
