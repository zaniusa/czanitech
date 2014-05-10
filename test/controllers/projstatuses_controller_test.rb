require 'test_helper'

class ProjstatusesControllerTest < ActionController::TestCase
  setup do
    @projstatus = projstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projstatus" do
    assert_difference('Projstatus.count') do
      post :create, projstatus: { statusname: @projstatus.statusname }
    end

    assert_redirected_to projstatus_path(assigns(:projstatus))
  end

  test "should show projstatus" do
    get :show, id: @projstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projstatus
    assert_response :success
  end

  test "should update projstatus" do
    patch :update, id: @projstatus, projstatus: { statusname: @projstatus.statusname }
    assert_redirected_to projstatus_path(assigns(:projstatus))
  end

  test "should destroy projstatus" do
    assert_difference('Projstatus.count', -1) do
      delete :destroy, id: @projstatus
    end

    assert_redirected_to projstatuses_path
  end
end
